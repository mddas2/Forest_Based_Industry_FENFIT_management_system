# from asyncio.windows_events import NULL
import datetime
from itertools import product
from logging import NullHandler
from pickle import FALSE
from struct import pack
from unicodedata import category
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.contrib import messages
from PIL import Image

from account.models import CustomUser
from .models import *
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.urls import reverse

#For Data Import and export
import pandas as pd
from .serializers import *
from rest_framework.views import APIView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.decorators import permission_required
from wsgiref.util import FileWrapper
from Admin.decorators import customized_user_passes_test,is_admin_role,is_admin_group,is_USER_role,is_all_role
from django.shortcuts import redirect
from django.db.models import Sum

from django.db.models import Q


@login_required(login_url=settings.LOGIN_URL)
# @customized_user_passes_test(is_admin_role)
@customized_user_passes_test(is_all_role)
def index(request, pk=None, pdc=None):
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
    
    dsc_role = request.user.get_dsc_Role()

    approved_admin =  CustomUser.objects.filter(role = CustomUser.CENTRAL,groups__name__contains = 'ceo').first()

    total_pending_application_form = all_data.count()
    total_approved_form = request.user.total_application_form_approved.all().count()
    total_rejected_application_form = request.user.total_application_form_cancelled.all().count()
    total_member = CustomUser.objects.all().count()
    total_income = UserApplicationPayment.objects.filter(is_payment=True).aggregate(Sum('payment_rupees'))
    # return HttpResponse(total_income['payment_rupees__sum'])
    # total_income = 9808
    data_1={
        'a' : 12,
        'total_pending_application_form' : total_pending_application_form,
        'total_approved_form' : total_approved_form,
        'total_rejected_application_form' : total_rejected_application_form,
        'total_member' : total_member,
        'approved_admin' : approved_admin,
        'total_income' : total_income['payment_rupees__sum']
    }

    # return  HttpResp  onse(today_max)
    slug1 = str(request.user.getRoleNameInNepali()) 
    data = {'slug1':slug1,'create':False,'action':True,'all_data':all_data}
    data = {**data,**data_1}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg

    if request.user.role==CustomUser.USER:        
        if request.user.is_verified == False:
            return redirect('MemberAprovalForm')
        elif request.user.is_verified == True and request.user.applicationform.all().first().dsc == None:
            return redirect('MemberAprovalFormReview')
        elif request.user.is_verified == True and request.user.applicationform.all().first().dsc != None and request.user.applicationform.all().first().dsc != 'approved':
            return redirect('UserApplicationFormCreate')
        elif  request.user.is_verified == True and request.user.applicationform.all().first().dsc == 'approved':
            return redirect('UserApplicationReview')
        else:
            return redirect('MemberAprovalFormReview')
    elif request.user.isAdmin() == True:
        data['client_msg']=client_msg
        return render(request,'admin/home.html',data)
    else:
        return HttpResponse("You can not access this dashboard")

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def NavigationList(request,id=None):
    slug1 = "Navigation"
    create_link_name = reverse("NavigationCreate")
    all_data = Navigation.objects.filter(parent_page_id=0)
    open = None
    if id:
        open = "open"
        all_data = Navigation.objects.filter(parent_page_id=id)
        create_link_name = reverse("SubNavigationCreate", args=[id])
        
    data = {'slug1':slug1,'create':True,'create_link_name':create_link_name,'all_data':all_data,'open':open}
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request, 'admin/navigation/navigation-list.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def NavigationCreate(request,edit_id=None,parent_id=None):
    # return HttpResponse(parent_id)
    title = "Navigation-create" 
    action = "NavigationStore"
    page_type = PageType.objects.all()
    category = Navigation.objects.all()
    team = Team.objects.all()
    edit_id_data = None
    parent_data = None #importent to create main navigation
    getposition = None

    if edit_id:
        edit_id_data = Navigation.objects.get(id=edit_id) #it is used for edit form. 
        try:      
            parent_data = Navigation.objects.get(id=edit_id_data.parent.id) #this is used to create subcategory where parent_page_id is parent_page_id
        except:
            None
            
        #auto position
    if edit_id == None and parent_id==None: # Means creating main navigation
        position = []
        for i in category.filter(parent_page_id = 0):
            position.append(i.position)
        if position:
            getposition = max(position) + 1

    if parent_id:
        parent_data = Navigation.objects.get(id=parent_id)
        position = []
        #Means creating sub navigation
        for i in category.filter(parent_page_id = parent_id):
            position.append(i.position)
        if position:
            getposition = max(position) + 1
    
    
    data = {
        'slug1':title,
        'create':True,
        'id_data':edit_id_data, 
        'action':action,
        'page_type':page_type,
        'category':category,
        'parent_data':parent_data,
        'team':team,
        'position' : getposition
    }
    client_msg = ContactUs.objects.filter(read_unread=True)
    data['client_msg']=client_msg
    return render(request, 'admin/navigation/navigation-form.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def NavigationStore(request,edit_id=None):
    if request.POST:
        images = {} #dictionary of image
        for im in request.FILES:
            if im == "image1":
                images['banner_image1'] = request.FILES['image1']
            if im == "image2":
                images['banner_image2'] = request.FILES['image2']
            if im == "image3":
                images['icon_image'] = request.FILES['image3']

        parent_page_id = request.POST['parent_page_id']
        if parent_page_id:
            if parent_page_id=="0":
                parent_id = '' #parent id is set to null if parent_page_id == 0 . if not set  to null then error
            else:
                parent_id = parent_page_id #parent_id is always equal to parent_page_id
            pass
        else:
            messages.error(request, "parent page id passing null , instead of 0. plz contact admin")
            return redirect(request.POST['next'])
        #return HttpResponse(request.POST['status'])
        data = {
            'name' : request.POST['name'],
            'parent_page_id' : request.POST['parent_page_id'],
            'caption' : request.POST['caption'],
            'status' : request.POST['status'],
            'page_type' : request.POST['page_type'],
            'title' : request.POST['title'],
            'short_description' : request.POST['short_description'],
            'long_contents' : request.POST['long_contents'],
            'meta_title' : request.POST['meta_title'],
            'keyword' : request.POST['keyword'],
            'position' : request.POST['position'],
            'parent_id' : parent_id,              
        }
        if edit_id != None:
            force = request.POST.get('force',False)
            if force != "force":
                count = 0
                category = Navigation.objects.filter(parent_page_id=data['parent_page_id'],position=data['position'])
                for i in category:
                    if i.id != edit_id:                        
                        count += 1                
                if (count >= 1) :
                    messages.info(request, "This position " + data['position'] + " already exist - 404 Conflict <input type='hidden' id='newposition' name='newposition' value='"+data['position']+"'>  <input type='hidden' name='force' value='force'> <button id='force' onsubmit='changeTextForce' type='submit' class='btn btn-success text-white' style='float: right; margin-top: -7px;'> <i class='fa fa-check'></i> Force Save</button> ")
                    return redirect(request.POST['next'])

 
        data = {**data,**images}   #merging two dictionary
        addingproduct = Navigation.objects.update_or_create(id=edit_id, defaults=data)#update_or_create method is used to creat data if id not exist. if id is exist then it update on particular id column
        messages.success(request, 'Navigation created sucessfully!!!.')
        return redirect("NavigationList",id = request.POST['parent_page_id']) #second way to redirect back
       
       

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def NavigationDelete(request,id):
    nav_obj = Navigation.objects.get(id=id)
    nav_obj.delete()
    messages.success(request, 'Navigation Deleted sucessfully!!!.')
    return redirect(request.META.get('HTTP_REFERER'))

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_admin_role)
def ClientMessage(request, id):
    slug1 = "Client Messages"
    ContactUs.objects.update(read_unread=False)
    client_msg = ContactUs.objects.filter(read_unread=True) #notification
    client_details = ContactUs.objects.filter(id=id).first()
    data = {'slug1':slug1,'create':False,'client_msg':client_msg,'client_details':client_details}
    return render(request, 'admin/clients_messages/client-msg-details.html',data)
    return HttpResponse('okay')


       
