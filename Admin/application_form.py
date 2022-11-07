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


@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserPersonalInformationCreate(request,id=None):
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "Personal-Information" 
    else:
        slug1 = "User-update" 
    action = "UserPersonalInformationStore"
    #Fetching the data of particular ID
    id_data = CustomUser.objects.get(id=request.user.id)
    data = {'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserPersonalInformationStore(request):
    if request.POST['password1'] == request.POST['password2']:
        password = make_password(request.POST['password1'])
    else:
        messages.info(request, "Password not match. please confirm the password")
        return redirect(request.POST['next'])

    if request.POST:
        data = {
            'first_name' : request.POST['first_name'],
            'last_name' : request.POST['last_name'],
            'username' : request.POST['username'],
        }
        # return HttpResponse(data)
        if request.POST['password1']!='':
            data['password'] = password
        user,create = CustomUser.objects.update_or_create(id=request.user.id , defaults=data)
        try:
            return HttpResponse(request.FILES['profile_image'])
            user.image = request.FILES['profile_image']
        except:
            pass
        messages.info(request, 'User inserted Successfully !!!')
        return redirect(UserPersonalInformationCreate)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationFormCreate(request,id=None):
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "Application-Form" 
    else:
        slug1 = "User-update" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = UserApplicationDetail.objects.filter(user_id=request.user.id).first()

    data = {'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-application-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationFormStore(request):

    if request.POST:
        form_detail = {
            'user_id' : request.user.id,
            'owner_full_name' : request.POST['owner_full_name'],
            'business_name' : request.POST['business_name'],
            'phone' : request.POST['phone'],
            'email' : request.POST['email'],
            'district' : request.POST['district'],
            'municipality' : request.POST['municipality'],
            'ward_number' : request.POST['ward_number'],
            'tole' : request.POST['tole'],
            'state' : request.POST['state'],
        }

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
        messages.info(request, 'User inserted Successfully !!!')
        return redirect(UserApplicationFormCreate)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationReview(request,id=None):
    create_link_name = reverse("UserPersonalInformationCreate")
    if id==None:
        slug1 = "Application-Form Review Status" 
    else:
        slug1 = "User-update" 
    action = "UserApplicationFormStore"
    #Fetching the data of particular ID
    id_data = UserApplicationDetail.objects.filter(user_id=request.user.id)
    if id_data.count()>0:
        data = {'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data.first()}
        return render(request, "admin/applicant_users/user-application-review.html",data)
    else:
        return redirect('UserApplicationFormCreate')

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
def Orders(request, pk=None, approved_pending_cancelled=None):#all application
    slug1 = "Order"
    all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role()).order_by('-updated_at')   
    if pk and approved_pending_cancelled:
         ApplicationForm.objects.filter(id=pk).update(approved_pending_cancelled=approved_pending_cancelled)
         if approved_pending_cancelled=='a':
            should_insert = 0
            try:
                dsc = ApplicationForm.objects.get(id=pk).dsc
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
                    ApplicationForm.objects.filter(id=pk).update(dsc=referred_to_dsc,approved_pending_cancelled=None,in_central_approved_by=request.user.id)
                    should_insert = 1
                    #there is no any upper level
                if should_insert==1:
                    whoses_form = ApplicationForm.objects.get(id=pk).user_id
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
def Delivered(request):
    dsc_role = request.user.get_dsc_Role()
    slug1 = "Delivered Orders"

    all_data = request.user.total_application_form_approved.all()
    
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':False,'is_approved':1}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/application_review/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def CanclelledOrders(request):
    dsc_role = request.user.get_dsc_Role()
    slug1 = "Canclelled Orders"
    all_data = request.user.total_application_form_cancelled.all()   
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':False,'is_cancelled':1}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/application_review/application-lists.html',data)
