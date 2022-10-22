from logging import NullHandler
from struct import pack
from unicodedata import category
from django.shortcuts import render
from django.http import HttpResponse
from django.contrib import messages
from PIL import Image
from .models import *
from Admin.models import *
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.contrib.auth.models import User
from django.urls import reverse
from django.shortcuts import redirect
from Ecommerce.Action import * #category and subcategory function
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from django.conf import settings

@login_required(login_url=settings.CLIENT_LOGIN_URL)
def index(request, order_id=None):
    try:
        c_id = request.COOKIES['c_id']
    except:
        return redirect('index_ecom')
    if order_id:
        udata = Order.objects.filter(id=order_id).update(pdc="c")
        messages.error(request, "Requested Order has been Cancled.")
        return redirect("UserProfile")
    all_data = Order.objects.filter(~Q(pdc="c"),~Q(pdc="d"),user_id=request.user.id).order_by('-updated_at')  
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    data = {'page':"index",'menus':menus,'blog':blog,'product':product,'all_data':all_data}
    return render(request, 'main/user/user-account.html',data)

def Logout(request):
    logout(request)
    return redirect('index_ecom')
    
@login_required(login_url=settings.CLIENT_LOGIN_URL)
def setting(request):
    user_detail = request.user
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    data = {'page':"index",'menus':menus,'blog':blog,'product':product,'user_detail':user_detail}
    return render(request, 'main/user/setting.html',data)
    
def ChangePassword(request):
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    data = {'page':"index",'menus':menus,'blog':blog,'product':product}
    return render(request, 'main/user/change-password.html',data)
    
def ViewOrder(request, p_id):
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    blog = Blog.objects.filter(status=1)
    product = Products.objects.all()  
    all_data = Order.objects.get(id=p_id)   
    data = {'page':"index",'menus':menus,'blog':blog,'product':product,'all_data':all_data}
    return render(request, 'main/user/view-order.html',data)
  