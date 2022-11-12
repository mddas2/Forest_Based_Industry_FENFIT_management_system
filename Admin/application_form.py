from email.policy import default
from xml.dom.minidom import Document
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from .models import *
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.urls import reverse
from django.shortcuts import redirect
from Admin.decorators import customized_user_passes_test,is_admin_role,is_USER_role
from account.models import *
from django.contrib.auth.hashers import make_password
from . import bulk_sms_email

#importing get_template from loader
from django.template.loader import get_template 
#import render_to_pdf from util.py 
from . import html_to_pdf 

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def AllMemberList(request, pk=None, approved_pending_cancelled=None):#all application

    slug1 = "सदस्य अनुमोदित फारम"
    all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True).order_by('-updated_at') 
    if pk and approved_pending_cancelled:
         if approved_pending_cancelled=='a':
           CustomUser.objects.filter(id=pk).update(is_verified=True)   
           messages.success(request,'Member approved successfully!!!')       
         elif approved_pending_cancelled=='c':            
            CustomUser.objects.filter(id=pk).update(is_varified=False,is_applyForVerified=False)          
            messages.success(request,'Member cancelled successfully!!!')
         elif approved_pending_cancelled=='p':            
            CustomUser.objects.filter(id=pk).update(is_verified=False,is_applyForVerified=True)          
            messages.success(request,'Member Pending successfully!!!')

    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/member-approved/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def ApprovedMember(request):
    slug1 = "सदस्य अनुमोदित फारम"
    all_data = CustomUser.objects.filter(is_verified=True).order_by('-updated_at') 

    dsc_role = request.user.get_dsc_Role()
    
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/member-approved/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
def UserPersonalInformationCreate(request,id=None):
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "Personal-Information" 
    else:
        slug1 = "User-update" 
    action = "UserPersonalInformationStore"
    try:
        state = CustomUser.find_states(request.user.states_district_dictionary_list,request.user.district_name)
    except:
        state = None
    #Fetching the data of particular ID
    id_data = CustomUser.objects.get(id=request.user.id)
    data = {'state':state,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
def UserPersonalInformationStore(request):
    if request.POST['password1'] == request.POST['password2']:
        password = make_password(request.POST['password1'])
    else:
        messages.info(request, "Password not match. please confirm the password")
        return redirect(request.POST['next'])

    if request.POST:
        data = {
            'first_name' : request.POST['first_name'],
        }
        # return HttpResponse(data)
        if request.POST['password1']!='':
            data['password'] = password
        user,create = CustomUser.objects.update_or_create(id=request.user.id , defaults=data)
        try:
            user.image = request.FILES['profile_image']
            user.save()
        except:
            pass
        messages.info(request, 'User inserted Successfully !!!')
        return redirect(UserPersonalInformationCreate)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationFormCreate(request,id=None):
    recomendation_price_category = RecomendationPriceCategory.recommendation_fee
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "सिफारिस फारम" 
    else:
        slug1 = "सिफारिस फारम" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = UserApplicationDetail.objects.filter(user_id=request.user.id).first()

    data = {'recomendation_price_category':recomendation_price_category,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-application-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def MemberAprovalForm(request,id=None):
    # business_type = BusinessType.business_type
    # for bus in business_type:
    #     return HttpResponse(business_type[bus]['name_1'])
    business_type = BusinessType.business_type
    
    create_link_name = reverse("MemberAprovalForm")
    if id==None:
        slug1 = "Member Aproval-Form" 
    else:
        slug1 = "User-update" 
    action = "MemberApprovalFormStore"
    #Fetching the data of particular ID
    id_data = request.user

    try:
        form_data = request.user.applicationform.all().first().get_user_application_detail
        business_name = form_data.business_name
        business_name = BusinessType.business_type[business_name]['name_1']
    except:
        form_data = None
        business_name = None
        
    
    state_name = CustomUser.find_states(request.user.states_district_dictionary_list,request.user.district_name)
    data = {'business_name':business_name,'business_type':business_type,'form_data':form_data,'state_name':state_name,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-membership-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def MemberApprovalFormStore(request):
    if request.POST:
        if request.POST['business_name']=='0':
            messages.info(request,'Please select व्यवसायको type')
            return redirect(MemberAprovalForm)
        form_detail = {
            'user_id' : request.user.id,
            'business_name' : request.POST['business_name'],
            
            'owner_full_name' : request.POST['owner_full_name'],
            'municipality' : request.POST['municipality'],
            'ward_number' : request.POST['ward_number'],
            'tole' : request.POST['tole'],
        }

        try:
            request.user.first_name = request.POST['owner_full_name']
            request.user.save()
        except:
            pass

        documents = {} #dictionary of image
        for im in request.FILES:
            if im == "certificate_citizenship":
                documents['certificate_citizenship'] = request.FILES['certificate_citizenship']
            if im == "certificate_company_registration":
                documents['certificate_company_registration'] = request.FILES['certificate_company_registration']
            if im == "provisional_account_number":
                documents['provisional_account_number'] = request.FILES['provisional_account_number']
            if im == "auditing":
                documents['auditing'] = request.FILES['auditing']
            if im == "tax_paid_certificate":
                documents['tax_paid_certificate'] = request.FILES['tax_paid_certificate']

        form_detail = {**form_detail , **documents}

        Userform_detail_create,detail_create = UserApplicationDetail.objects.update_or_create(user_id=request.user.id , defaults=form_detail)
        
        form_data = {
            'user_id' : request.user.id,
            'get_user_application_detail_id' : Userform_detail_create.id,
        }
            #join dcs and form_data if user press send
        form,form_create = ApplicationForm.objects.update_or_create(user_id=request.user.id , defaults=form_data)
        # try:
        #     user.image = request.FILES['profile_image']
        # except:
        #     pass
        if form:
            CustomUser.objects.filter(id=request.user.id).update(is_applyForVerified=True)
            
        messages.info(request, 'Member Approval Form Send Successfully !!!')
        return redirect(MemberAprovalFormReview)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def MemberAprovalFormReview(request,id=None):
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "Application-Form Review Status" 
    else:
        slug1 = "User-update" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = request.user
    try:
        form_data = request.user.applicationform.all().first().get_user_application_detail
        business_name = form_data.business_name
        business_name = BusinessType.business_type[business_name]['name_1']
    except:
        form_data = None
        business_name = None

    data = {'business_name':business_name,'id_data':id_data,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'form_data':form_data}
    return render(request, "admin/applicant_users/member-approval-form-review.html",data)
    
    return redirect('MemberAprovalForm')

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationFormStore(request):

    if request.POST:
        if request.POST['business_price_category']=='0':
            messages.info(request,'Please select सिफारिस शुल्क')
            return redirect(MemberAprovalForm)

        form_detail = {
            'user_id' : request.user.id,
            'business_price_category' : request.POST['business_price_category'],
        }

        if request.POST['voucher_number'] != None:
            form_detail['voucher_number'] = request.POST['voucher_number']
            

        documents = {} #dictionary of image
        for im in request.FILES:
            if im == "certificate_citizenship":
                documents['certificate_citizenship'] = request.FILES['certificate_citizenship']
            if im == "certificate_company_registration":
                documents['certificate_company_registration'] = request.FILES['certificate_company_registration']
            if im == "provisional_account_number":
                documents['provisional_account_number'] = request.FILES['provisional_account_number']
            if im == "auditing":
                documents['auditing'] = request.FILES['auditing']
            if im == "tax_paid_certificate":
                documents['tax_paid_certificate'] = request.FILES['tax_paid_certificate']

        form_detail = {**form_detail , **documents}

        Userform_detail_create,detail_create = UserApplicationDetail.objects.update_or_create(user_id=request.user.id , defaults=form_detail)
        
        form_data = {
            'user_id' : request.user.id,
            'get_user_application_detail_id' : Userform_detail_create.id,
        }
        if request.POST['submits']=='1':
            dsc = {
                'dsc' : 'd',
            }
            form_data = {**dsc,**form_data}
            #join dcs and form_data if user press send
        form,form_create = ApplicationForm.objects.update_or_create(user_id=request.user.id , defaults=form_data)
        # try:
        #     user.image = request.FILES['profile_image']
        # except:
        #     pass
        messages.info(request, 'सिफारिस फारम saved !!!')
        return redirect(UserApplicationFormCreate)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationReview(request,id=None):
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "सिफारिस फारम पुनरावलोकन स्थिति" 
    else:
        slug1 = "User-update" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = request.user.applicationform.all().first()
    form_data = request.user.applicationform.all().first().get_user_application_detail

    business_name = form_data.business_name
    business_name = BusinessType.business_type[business_name]['name_1']
    data = {'business_name':business_name,'id_data':id_data,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'form_data':form_data}
    return render(request, "admin/applicant_users/user-application-review.html",data)
    # except:
    #     form_data = None
    #     business_name = None
    #     return redirect('UserApplicationFormCreate')

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationResult(request,id=None):
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "Application-Result" 
    else:
        slug1 = "User-update" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = CustomUser.objects.get(id=request.user.id)
    data = {'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-application-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def CustomerOrder(request, pk=None, pdc=None):
    slug1 = "Order"
    all_data = ApplicationForm.objects.filter(dsc=None).order_by('-updated_at')   
    if pk and pdc:
         ApplicationForm.objects.filter(id=pk).update(pdc=pdc)  
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/customer_orders/order.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def AllApplication(request, pk=None, approved_pending_cancelled=None):#all application

    slug1 = "सिफारिश अनुमोदन"
    all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role()).order_by('-updated_at')   
    if pk and approved_pending_cancelled:
         ApplicationForm.objects.filter(id=pk).update(approved_pending_cancelled=approved_pending_cancelled)
         if approved_pending_cancelled=='a':
            should_insert = 0
            try:
                dsc = ApplicationForm.objects.get(id=pk).dsc
                approved = 0
                if dsc == 'd' and request.user.get_dsc_Role()=='d':
                    referred_to_dsc = 's'
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_district_approved_by = request.user.id)
                    should_insert = 1
                elif dsc == 's' and request.user.get_dsc_Role()=='s':
                    referred_to_dsc = 'c'
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_state_approved_by=request.user.id)
                    should_insert = 1
                elif dsc == 'c' and request.user.get_dsc_Role()=='c':
                    referred_to_dsc = 'approved'
                    #ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_central_approved_by=request.user.id)
                    should_insert = 1
                    approved = 1

                    #there is no any upper level
                if should_insert==1:
                    whoses_form = ApplicationForm.objects.get(id=pk).user_id
                    if approved == 1:
                        to_number = CustomUser.objects.get(id=whoses_form).phone
                        bulk_sms_email.SendSms(to_number,"Congratulation Your Form is approved successfully by FENFIT")

                        to_email = [CustomUser.objects.get(id=whoses_form).email]
                        from_email = settings.EMAIL_HOST_PASSWORD
                        subject = "FenFit"
                        email_message = 'Form Approved Successfully'
                        context_dict={
                                'name':'Manoj Kumar Das',
                                'date':'989',
                              }
                        template = get_template('certificate/sifarish.html')
                        html = template.render(context_dict,request)
                        pdf = html_to_pdf.render_to_pdf(html) 
                        try:   
                            bulk_sms_email.SendMailAttachment(subject,email_message,from_email,pdf,to_email)
                        except:                       
                            messages.info(request,'Email send fail.')
                    # return HttpResponse(whose_form)
                    application_form_approved_detail_data = {
                        'approved_form_id' : pk,
                        'approved_by_id' : request.user.id,
                        'whose_form' : whoses_form
                        }
                    ApplicationFormApprovedDetail.objects.create(**application_form_approved_detail_data)
                else:
                    messages.error(request,'can not insert to application_form_approved_detail please report to programmer')
                    
                messages.success(request,'form approved successfully!!!')
            except:
                messages.error(request,'form not approved')
         elif approved_pending_cancelled=='c':
            referred_to_dsc = None #jumps to user(cancelled by all)
            ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None)
            whoses_form = ApplicationForm.objects.get(id=pk).user_id
            application_form_cancelled_detail_data = {
                    'cancelled_form_id' : pk,
                    'cancelled_by_id' : request.user.id,
                    'whose_form' : whoses_form
                }
            ApplicationFormCancelledDetail.objects.create(**application_form_cancelled_detail_data)           
            messages.success(request,'form cancelled successfully!!!')

    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/application_review/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def Pending(request, pk=None, approved_pending_cancelled=None):
    dsc_role = request.user.get_dsc_Role()
    slug1 = "Pending Orders"
    all_data = ApplicationForm.objects.filter(dsc=dsc_role).order_by('-updated_at')   
    if pk and approved_pending_cancelled:
         ApplicationForm.objects.filter(id=pk).update(approved_pending_cancelled=approved_pending_cancelled)  
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/application_review/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def ApprovedApplication(request):
    dsc_role = request.user.get_dsc_Role()
    slug1 = "Approved Applicatiton"

    all_data = request.user.total_application_form_approved.all()
    
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':False,'is_approved':1}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/application_review/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def CanelledApplication(request):
    dsc_role = request.user.get_dsc_Role()
    slug1 = "Canclelled Orders"
    all_data = request.user.total_application_form_cancelled.all()   
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':False,'is_cancelled':1}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/application_review/application-lists.html',data)
