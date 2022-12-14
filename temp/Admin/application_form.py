from email.policy import default
from xml.dom.minidom import Document
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from .models import *
from nepallocation.models import *
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.urls import reverse
from django.shortcuts import redirect
from Admin.decorators import customized_user_passes_test,is_admin_role,is_USER_role,is_central_role
from account.models import *
from django.contrib.auth.hashers import make_password
from payment.payment import BusinessPriceCategory
from . import bulk_sms_email
from . import nepal_location
from django.core.paginator import Paginator
from django.db.models import Q

#importing get_template from loader
from django.template.loader import get_template 
#import render_to_pdf from util.py 
from . import html_to_pdf 
from Admin.get_contact_list import getExactEmailList

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def AllMemberList(request, pk=None, approved_pending_cancelled=None):#all application  
    slug1 = "सदस्य अनुमोदित फारम"
    district_name = request.user.district_name
    state_name = request.user.state_name

    if request.user.role==CustomUser.DISTRICT:
        all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True,district_name=district_name ,union_type='district').order_by('-updated_at') 
    if request.user.role==CustomUser.PRIVATE:
        all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True,union_name=request.user.email ,union_type='private').order_by('-updated_at') 
    elif request.user.role==CustomUser.STATE:
         all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True,state_name=state_name ,union_type='district').order_by('-updated_at')
    elif request.user.role==CustomUser.CENTRAL:
         all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True).order_by('-updated_at')


    if pk and approved_pending_cancelled:
         if approved_pending_cancelled=='a':
           CustomUser.objects.filter(id=pk).update(is_verified=True)  
           CustomUser.objects.filter(id=pk).update(approved_name=request.user.first_name,approved_email=request.user.email,approved_signature=request.user.signature,approved_company_name=request.user.company_name) 
           messages.success(request,'Member approved successfully!!!')       
         elif approved_pending_cancelled=='c':            
            CustomUser.objects.filter(id=pk).update(is_verified=False,is_applyForVerified=False)          
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
        try:
            user.signature = request.FILES['signature']
            user.save()
        except:
            pass
        messages.info(request, 'User inserted Successfully !!!')
        return redirect(UserPersonalInformationCreate)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationFormCreate(request,id=None):

    # print(nepal_location.VDCbyDistrict(request))
    try:
        total_vdc = Districts.objects.filter(name = request.user.district_name)  
        total_vdc = total_vdc.first().municipalities.all() 
        # return HttpResponse(total_vdc.first().alt_name)
    except:
        return HttpResponse("you have selected your district name which is not match with our database please contact to admin")
        # return HttpResponse(vdc)
    recomendation_price_category = RecomendationPriceCategory.recommendation_fee
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "सिफारिस फारम" 
    else:
        slug1 = "सिफारिस फारम" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = UserApplicationDetail.objects.filter(user_id=request.user.id).first()
    try:
        approved_admin = CustomUser.objects.get(email = id_data.union_name)
    except:
        approved_admin = None
    data = {'approved_admin':approved_admin,'total_vdc':total_vdc,'recomendation_price_category':recomendation_price_category,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-application-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def MemberAprovalForm(request,id=None):
    try:
        total_vdc = Districts.objects.filter(name = request.user.district_name)  
        total_vdc = total_vdc.first().municipalities.all() 
        # return HttpResponse(total_vdc.first().alt_name)
    except:
        return HttpResponse("you have selected your district name which is not match with our database please contact to admin")
    # business_type = BusinessType.business_type
    # for bus in business_type:
    #     return HttpResponse(business_type[bus]['name_1'])
    business_type = BusinessType.business_type
    
    create_link_name = reverse("MemberAprovalForm")
    if id==None:
        slug1 = "सदस्यता आवेदन फारम" 
    else:
        slug1 = "User-update" 
    action = "MemberApprovalFormStore"
    #Fetching the data of particular ID
    id_data = request.user

    private_organization = CustomUser.objects.filter(role = CustomUser.PRIVATE )

    try:
        form_data = request.user.applicationform.all().first().get_user_application_detail
        business_name = form_data.business_name
        business_name = BusinessType.business_type[business_name]['name_1']
    except:
        form_data = None
        business_name = None   
    
    data = {'private_organization':private_organization,'total_vdc':total_vdc,'business_name':business_name,'business_type':business_type,'form_data':form_data,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-membership-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def MemberApprovalFormStore(request):
    if request.POST:
        if request.POST['member_admin'] == 'admin':
            AddTeam(request)
            apply_role_type = request.POST['role_type']
            request.user.apply_role_type = apply_role_type
            request.user.save()
        else:
            request.user.apply_role_type = CustomUser.USER
            request.user.save()

        if request.POST['union_type'] == 'private':
            union_type = "private" #सदस्य हुन चाहेको संघ
            if request.POST['union_name'] !='0':
                union_name = request.POST['union_name']
            else:
                messages.info(request,"सदस्य हुन चाहेको संघ चयन गर्नुहोस्")        
                return redirect(MemberAprovalForm)        
        elif request.POST['union_type'] == 'district':
            union_type = "district"
            distrct = request.user.district_name
            try:
                union_name=CustomUser.objects.filter(district_name=distrct,role=CustomUser.DISTRICT).first().email     
            except:
                try:
                    union_name=CustomUser.objects.filter(state_name=request.user.state_name,role=CustomUser.STATE).first().email
                except:
                    union_name=CustomUser.objects.filter(role=CustomUser.CENTRAL).first().email
        else:
            messages.info(request,'सदस्य हुन चाहेको संघ चयन गर्नुहोस्')
            return redirect(MemberAprovalForm)
       
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
            'union_type' : union_type,
            'union_name' : union_name,
            'company_name' : request.POST['company_name'],
        }

        user_data = {
            'union_type' : union_type,
            'union_name' : union_name,
            'company_name' : request.POST['company_name'],
            'first_name' : request.POST['owner_full_name'],
            'member_admin' : request.POST['member_admin'],
        }
        try:
            signature = request.FILES['signature']
            user_data['signature'] = signature
        except:
            pass

        CustomUser.objects.update_or_create(id=request.user.id, defaults=user_data)        

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
        slug1 = "सदस्य अनुमोदन" 
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

    try:
        approved_admin = CustomUser.objects.get(email = id_data.approved_email)
    except:
        approved_admin = None
    # return HttpResponse(CustomUser.objects.get(id=id_data.id).union_namec)
    data = {'approved_admin':approved_admin,'business_name':business_name,'id_data':id_data,'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'form_data':form_data}

    return render(request, "admin/applicant_users/member-approval-form-review.html",data)
    
    return redirect('MemberAprovalForm')

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationFormStore(request):
    import json
    if request.POST:
        # response = json.loads(response)
        # return HttpResponse(response)
        if 'business_price_category' in request.POST:
            price_category = request.POST['business_price_category']
            is_reniew = 0
            try:
                payment_rupees = int(RecomendationPriceCategory.recommendation_fee[price_category]['start_recommendation_fee'])
            except:
                 messages.ERROR(request,'Please select सिफारिस शुल्क र सो को वाडफाड')
                 return redirect('UserApplicationFormCreate')
        else:
            messages.ERROR(request,'Please select सिफारिस शुल्क र सो को वाडफाड')
            return redirect('UserApplicationFormCreate')

        form_detail = {
            'user_id' : request.user.id,
            'business_price_category' : price_category,
            'is_reniew' : is_reniew,
            'payment_rupees' : payment_rupees,
            'physical_year' : request.POST['physical_year']
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
            if im == "bank_voucher":
                documents['bank_voucher'] = request.FILES['bank_voucher']
            if im == "industry_certificate_front_side":
                documents['industry_certificate_front_side'] = request.FILES['industry_certificate_front_side']
            if im == "industry_certificate_back_side":
                documents['industry_certificate_back_side'] = request.FILES['industry_certificate_back_side'] 

        form_detail = {**form_detail , **documents}

        Userform_detail_create,detail_create = UserApplicationDetail.objects.update_or_create(user_id=request.user.id , defaults=form_detail)

        try:
            Userform_detail_create.company_name = request.POST['company_name']
            Userform_detail_create.authorized_capital_of_company = int(request.POST['authorized_capital_of_company'])
            Userform_detail_create.paid_up_capital_of_company = int(request.POST['paid_up_capital_of_company'])
            Userform_detail_create.transaction_amount = int(request.POST['transaction_amount'])
            Userform_detail_create.tax_amount = int(request.POST['tax_amount'])
            Userform_detail_create.number_of_employees = int(request.POST['number_of_employees'])
            Userform_detail_create.save()
        except:
            messages.info(request,"कृपया कम्पनीको विवरण भर्नुहोस्")

        form_data = {
            'user_id' : request.user.id,
            'get_user_application_detail_id' : Userform_detail_create.id,
        }
        if request.POST['submits']=='1':
            dsc = {
                'dsc' : 'district',
            }
            form_data = {**dsc,**form_data}
            messages.info(request, 'सिफारिस फारम Forwarded successfully !!!')
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
    approved_admin =  CustomUser.objects.filter(role = CustomUser.CENTRAL,groups__name__contains = 'ceo').first()
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "सिफारिस फारम पुनरावलोकन स्थिति" 
    else:
        slug1 = "User-update" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = request.user.applicationform.all().first()
    try:
        form_data = request.user.applicationform.all().first().get_user_application_detail
        business_name = form_data.business_name
        business_name = BusinessType.business_type[business_name]['name_1']
    except:
        form_data = None
        business_name =None
    
    data = {
        'business_name':business_name,
        'id_data':id_data,
        'slug1':slug1,
        'create':False,
        'create_link_name':create_link_name,
        'action':action,
        'form_data':form_data,
        'approved_admin' : approved_admin,
    }
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
@customized_user_passes_test(is_central_role)
def BillAdd(request):#all application
    # return HttpResponse(request.POST.items())
    obj = ApplicationForm.objects.get(id=request.POST['form_id'])
    obj.bill_number = request.POST['bill_number']
    obj.save()
    return redirect("/")


@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def PaymentGet(request):#all application
    # return HttpResponse(request.POST.items())
    obj = ApplicationForm.objects.get(id=request.POST['form_id'])
    obj.payment_get = request.POST['payment_get']
    obj.save()
    return redirect("/")

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def TypeApplicationId(request):#all application
    # return HttpResponse(request.POST.items())
    obj = ApplicationForm.objects.get(id=request.POST['form_id'])
    try:
        obj.type_application_id = request.POST['type_application_id']
        obj.save()
    except:
        pass
    return redirect("/")

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def CertificateUpload(request):#all application
    # return HttpResponse(request.POST.items()    
        try:
            formobj = ApplicationForm.objects.get(id=request.POST['form_id'])
            application_obj = formobj.get_user_application_detail
            application_obj.application_certificate = request.FILES['application_certificate']
            application_obj.save()
            messages.info(request,"certificate upload successfully")
        except:    
            messages.error(request,"certificate can't be upload")
            pass
        return redirect("/")


@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def AccountantPayment(request):#all application
    
    try:
        if request.user.groups.all().first().name != 'accountant':
            messages.info(request,'in account something is wrong')
            return redirect('AllApplication')
    except:
        messages.info(request,"accountant something is wrong")
    slug1 = "सिफारिश अनुमोदन"
    all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role()).order_by('-updated_at')
    if request.POST:
        pk = request.POST['pk']
        payment = request.POST['payment']
        if pk and payment:
            ApplicationForm.objects.filter(id=pk).update(approved_pending_cancelled=payment)
            
            if payment=='1':
                should_insert = 0     
                app_form_obj = ApplicationForm.objects.get(id=pk)           
                dsc = app_form_obj.dsc
                bill_number = app_form_obj.bill_number
                payment_get = app_form_obj.payment_get

                application_detail =  ApplicationForm.objects.get(id=pk).get_user_application_detail
                # return HttpResponse(application_detail.applicationform.all().first().id)
                if dsc == 'central_accountant' or dsc == 'central_admin' and request.user.get_dsc_Role()=='central_accountant':
                    approved_ceo_obj = CustomUser.objects.filter(role = CustomUser.CENTRAL,groups__name__contains = 'ceo').first()
                    payment_data = {
                        'is_renew' : application_detail.is_reniew,
                        'business_price_category' : application_detail.business_price_category,
                        'payment_rupees' : application_detail.payment_rupees,
                        'voucher_number' : application_detail.voucher_number,
                        'business_name' : application_detail.business_name,
                        'user' : application_detail.user,
                        'get_user_application_detail' : application_detail,
                        'user_application_form' : application_detail.applicationform.all().first(),
                        'mobile_number' : application_detail.user.phone,
                        'email' : application_detail.user.email,
                        'owner_full_name' : application_detail.owner_full_name,
                        'company_name' : application_detail.company_name,
                        'who_payment' : request.user.email,
                        'is_payment' : True,
                        'bill_number' : bill_number,
                        'payment_get' : payment_get,
                        'ceo_approved_name' : approved_ceo_obj.first_name,
                        'ceo_approved_email' : approved_ceo_obj.email,
                        'ceo_approved_signature' : approved_ceo_obj.signature,
                    }
                    UserApplicationPayment.objects.update_or_create(bill_number=bill_number,defaults=payment_data)
                    ApplicationForm.objects.filter(id=pk).update(is_payment=1,dsc="central_admin")
                    whoses_form = app_form_obj.user_id
                    application_form_approved_detail_data = {
                        'approved_form_id' : pk,
                        'approved_by_id' : request.user.id,
                        'whose_form' : whoses_form
                        }
                    ApplicationFormApprovedDetail.objects.create(**application_form_approved_detail_data)
                    messages.info(request,"payment sucessfull")  
                else:
                    messages.error(request,"payment unsucessfull") 

            
            elif payment=='0':
                should_insert = 0
                dsc = ApplicationForm.objects.get(id=pk).dsc
                if dsc == 'central_accountant' or dsc == 'central_admin' and request.user.get_dsc_Role()=='central_accountant':
                        application_form = ApplicationForm.objects.filter(id=pk).first()
                        application_form.is_payment = 0
                        application_form.save()
                        bill_number = application_form.bill_number
                        payment = UserApplicationPayment.objects.filter(bill_number=bill_number).update(is_payment = 0)
                        messages.info(request,"unpaid sucessfull")

    return redirect('AllApplication')

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def AllApplication(request, pk=None, approved_pending_cancelled=None):#all application
    # return HttpResponse(request.user.groups.first().id)
    slug1 = "सिफारिश अनुमोदन"
    if request.user.role == CustomUser.DISTRICT:
        all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__district_name__contains=request.user.district_name).order_by('-updated_at')  
    elif request.user.role == CustomUser.STATE:
        all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__state_name__contains=request.user.state_name).order_by('-updated_at')  
    elif request.user.role == CustomUser.PRIVATE:
        all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__union_name__contains=request.user.email).order_by('-updated_at') 
    elif request.user.role == CustomUser.CENTRAL:
        if request.user.get_dsc_Role() == 'central_accountant':
            all_data = ApplicationForm.objects.filter(Q(dsc=request.user.get_dsc_Role()) | Q(dsc='central_admin'),dsc__isnull=False,).order_by('-updated_at') #admin can view both data from accountant and self
        else:
            all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role()).order_by('-updated_at') 
    else:
        all_data = None          

    if pk and approved_pending_cancelled:
         ApplicationForm.objects.filter(id=pk).update(approved_pending_cancelled=approved_pending_cancelled)
         if approved_pending_cancelled=='a':
            should_insert = 0
            try:
                dsc = ApplicationForm.objects.get(id=pk).dsc
                approved = 0
                is_admin_approved = 0
                if dsc == 'district' and request.user.get_dsc_Role()=='district':
                    referred_to_dsc = 'state'
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_district_approved_by = request.user.id)
                    should_insert = 1
                elif dsc == 'state' and request.user.get_dsc_Role()=='state':
                    referred_to_dsc = 'central_accountant' #first application goes to central of accountant
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_state_approved_by=request.user.id)
                    should_insert = 1
                elif dsc == 'central_accountant' and request.user.get_dsc_Role()=='central_accountant':
                    referred_to_dsc = 'central_admin' 
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_central_approved_by=request.user.id)
                    should_insert = 1
                elif dsc == 'central_admin' and request.user.get_dsc_Role()=='central_admin':
                    referred_to_dsc = 'central_ceo'  #after central accountant forward second application goes to central of admin
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_central_approved_by=request.user.id)
                    should_insert = 1
                    is_admin_approved = 1
                elif dsc == 'central_ceo' and request.user.get_dsc_Role()=='central_ceo':
                    referred_to_dsc = 'approved' #approved
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_central_approved_by=request.user.id)
                    should_insert = 1
                    approved = 1

                    #there is no any upper level
                if should_insert==1:
                    whoses_form = ApplicationForm.objects.get(id=pk).user_id
                    application_form =  ApplicationForm.objects.get(id=pk)        
                    if is_admin_approved:                   

                        to_number = CustomUser.objects.get(id=whoses_form).phone                        
                        user_sms = CustomUser.objects.get(id=whoses_form)
                        form_sms = ApplicationForm.objects.get(id=pk)
                        sms = "FENFIT_ALERT!\n"+"District Name:"+ str(user_sms.district_name) + "\n Name:"+ str(user_sms.first_name)+"\n Id: " + str(form_sms.id)
                        bulk_sms_email.SendSmsRadiant(to_number, sms)
                        # bulk_sms_email.SendSmsSparrow(to_number, sms)
                        messages.success(request,"Messages sent")
                    if approved == 1:
                        messages.success(request,'form approved successfully!!!')
                        UserApplicationDetail.objects.filter(id=pk).update(approved_name=request.user.first_name,approved_email=request.user.email,approved_signature=request.user.signature,approved_company_name=request.user.company_name)
                       
                        emaillist = getExactEmailList(request,application_form)    
                        emaillist.append(CustomUser.objects.get(id=whoses_form).email)
                        to_email = emaillist

                        # from_email = settings.EMAIL_HOST_PASSWORD #this is for gmail
                        from_email = settings.EMAIL_HOST_USER #this is for fenfit email
                        subject = "FenFit"
                        email_message = 'वन उद्यम सुचीकृतका लागि नेपाल वन पैदावार उद्योग ब्यबसायि महासंघ बाट सिफारिस गरिएको पत्र यसै साथ संलग्न राखि पठाईएको ब्यहोरा अनुरोध छ ।.\n '
                        try:   
                            # bulk_sms_email.SendMail(subject,email_message,from_email,to_email)
                            if application_form.get_user_application_detail.application_certificate:
                                pdffile = application_form.get_user_application_detail.application_certificate
                                bulk_sms_email.SendMailAttachment_Pdf(subject,email_message,from_email,pdffile,to_email)
                                messages.success(request,"Email with pdf sent successfuly!!!")
                            # else:
                            #     pdf = html_to_pdf.report(request,ApplicationForm.objects.get(id=pk)) 
                            #     bulk_sms_email.SendMailAttachment(subject,email_message,from_email,pdf,to_email)                                
                            #     messages.success(request,"Email sent successfuly!!!")
                        except:                       
                            messages.info(request,'Email send fail.')
                        
                    application_form_approved_detail_data = {
                        'approved_form_id' : pk,
                        'approved_by_id' : request.user.id,
                        'whose_form' : whoses_form
                        }
                    ApplicationFormApprovedDetail.objects.create(**application_form_approved_detail_data)
                    messages.success(request,"Form Forwarded successfully")
                else:
                    messages.error(request,'can not approved form')
            except:
                messages.error(request,'form not approved')
         elif approved_pending_cancelled=='c':
            dsc = dsc_role = request.user.get_dsc_Role()
            referred_to_dsc = None #jumps to user(cancelled by all)
            try:
                app_dsc = ApplicationForm.objects.get(id=pk).dsc
            except:
                messages.error(request,"you can not cancelled form ")
                return redirect('index')
            if app_dsc == dsc:
                update_obj = ApplicationForm.objects.filter(id=pk,dsc=dsc).update(dsc=referred_to_dsc,approved_pending_cancelled=None)
            else:
                update_obj = 0
            if update_obj == 1:           
                whoses_form = ApplicationForm.objects.get(id=pk).user_id
                application_form_cancelled_detail_data = {
                        'cancelled_form_id' : pk,
                        'cancelled_by_id' : request.user.id,
                        'whose_form' : whoses_form
                    }
                ApplicationFormCancelledDetail.objects.create(**application_form_cancelled_detail_data)           
                messages.success(request,'form cancelled successfully!!!')
            else:
                messages.error(request,'you can not cancelled form')
                return redirect('index')

    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    # try:
    #     if pdf:
    #         response = HttpResponse(content_type='application/pdf') #for download
    #         response['Content-Disposition'] = 'attachment; filename=certificate.pdf' #for download
    #         response.write(pdf)
    #         return response
    # except:
    #     pass

    return render(request,'admin/application_review/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def Pending(request, pk=None, approved_pending_cancelled=None):
    if request.user.role == CustomUser.DISTRICT:
        all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__district_name__contains=request.user.district_name).order_by('-created_at')  
    elif request.user.role == CustomUser.STATE:
        all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__state_name__contains=request.user.state_name).order_by('-created_at')  
    elif request.user.role == CustomUser.PRIVATE:
        all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__union_name__contains=request.user.email).order_by('-created_at') 
    elif request.user.role == CustomUser.CENTRAL:
        if request.user.get_dsc_Role() == 'central_accountant':
            all_data = ApplicationForm.objects.filter(Q(dsc=request.user.get_dsc_Role()) | Q(dsc='central_admin'),dsc__isnull=False,).order_by('payment') #admin can view both data from accountant and self
        else:
            all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role()).order_by('-created_at') 
    else:
        all_data = None 
    
    dsc_role = request.user.get_dsc_Role()

    slug1 = "Pending Application"

   
    page_number = request.GET.get('page')
    page_type = request.GET.get('type')
    page_type = request.GET.get('type')
    range = request.GET.get('range')

    next = 2
    prev = 1
    try:
        try:
            paginate_obj = Paginator(all_data, int(range)) #creating pagiting (only 5 data)
        except:
            paginate_obj = Paginator(all_data, 2)
        try:
            page_number = int(page_number)
            if page_type == "next":
                next = page_number+1
            elif page_number == 'prev':
                prev = page_number-1
        except:
            page_number = 2
        try:
            all_data = paginate_obj.get_page(page_number)  # returns the desired page object
        except:
            # if page_number is not an integer then assign the first page
            all_data = paginate_obj.page(1)
    except:
        range = 2
        all_data = None
   
    if pk and approved_pending_cancelled:
         ApplicationForm.objects.filter(id=pk).update(approved_pending_cancelled=approved_pending_cancelled)  
    data = {'range':range,'next':next,'prev':prev,'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
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

def AddTeam(request):
    # return HttpResponse(request.POST.items())
    count = int(request.POST['count'])
    for i in range(count):
        i=i+1
        teamid = request.POST.get('teamid'+str(i),False)
        if(teamid == ""):
            teamid = None     
                      
        data2 = {
           'admin' : request.user,
           'name' : request.POST.get('team_name'+str(i),False),
           'post' : request.POST.get('team_post'+str(i),False),
           'email' :  request.POST.get('team_email'+str(i),False),
           'phone' :  request.POST.get('team_phone'+str(i),False),
          }      
        for j in request.FILES:
            if "team_image"+str(i) == j :
                data2['image']= request.FILES["team_image"+str(i)]
                           
        if(data2['name'] != "" and data2['post'] != "" ):
            TeamMember.objects.update_or_create(email=teamid, defaults=data2)
            return 1
        else:
            messages.error(request,"Name and Post of Teams Can Not be empty !")
            return 1
            # return 1

def DeleteTeam(request,id=None):
    try:
        TeamMember.objects.get(id=id).delete()
    except:
        pass
    return redirect('MemberAprovalForm')
    
@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def CertificatiRemoved(request , id=None):
    if request.user.role != request.user.CENTRAL:
        messages.info(request,"you are not allowed to delete file")
        return redirect("/")
    try:
        obj = ApplicationForm.objects.get(id=id)
        detail_obj = obj.get_user_application_detail.application_certificate.delete(save=True)
        messages.success(request,"certificate is removed successfully !")
        return redirect("/")
    except:
        messages.info(request,"can not remove certificate")
        return redirect("/")