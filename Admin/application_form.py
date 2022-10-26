from email.policy import default
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
            'email' : request.POST['email'],
            'phone' : request.POST['phone'],
        }
        # return HttpResponse(data)
        if request.POST['password1']!='':
            data['password'] = password
        user,create = CustomUser.objects.update_or_create(id=request.user.id , defaults=data)
        try:
            user.image = request.FILES['profile_image']
        except:
            pass
       
        request.session['user_id'] = user.id
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
    id_data = UserApplicationDetail.objects.get(user_id=request.user.id)
    data = {'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-application-form.html",data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_USER_role)
def UserApplicationFormStore(request):

    if request.POST:
        form_detail = {
            'user_id' : request.user.id,
            'name' : request.POST['first_name'],
            'phone' : request.POST['phone'],
            'email' : request.POST['email'],
            'district' : request.POST['district'],
            'state' : request.POST['state'],
        }

        Userform_detail_create,detail_create = UserApplicationDetail.objects.update_or_create(user_id=request.user.id , defaults=form_detail)
        
        form_data = {
            'user_id' : request.user.id,
            'get_user_application_detail_id' : Userform_detail_create.id,
        }
        
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
    id_data = CustomUser.objects.get(id=request.user.id)
    data = {'slug1':slug1,'create':False,'create_link_name':create_link_name,'action':action,'id_data':id_data}
    return render(request, "admin/applicant_users/user-application-review.html",data)

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
    all_data = Order.objects.filter(pdc=None).order_by('-updated_at')   
    if pk and pdc:
         Order.objects.filter(id=pk).update(pdc=pdc)  
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/customer_orders/order.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def Orders(request, pk=None, pdc=None):
 
    slug1 = "Order"
    all_data = Order.objects.filter(pdc=None).order_by('-updated_at')   
    if pk and pdc:
         Order.objects.filter(id=pk).update(pdc=pdc)  
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/order/order.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def Pending(request, pk=None, pdc=None):

    slug1 = "Pending Orders"
    all_data = Order.objects.filter(pdc="p").order_by('-updated_at')   
    if pk and pdc:
         Order.objects.filter(id=pk).update(pdc=pdc)  
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':True}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/order/order.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def Delivered(request):
    slug1 = "Delivered Orders"
    all_data = Order.objects.filter(pdc="d").order_by('-updated_at')   
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':False}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/order/order.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def CanclelledOrders(request):
    try:
        c_id = request.COOKIES['c_id']
    except:
        return redirect('index_ecom')
    slug1 = "Canclelled Orders"
    all_data = Order.objects.filter(pdc="c").order_by('-updated_at')   
    data = {'slug1':slug1,'create':False, 'all_data':all_data,'action':False}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request,'admin/order/order.html',data)
