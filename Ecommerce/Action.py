from ast import Return
from django.http import HttpResponse
from django.urls import reverse
from Admin.models import *
from django.shortcuts import render
from django.shortcuts import redirect
import random
from django.core.paginator import Paginator

def CategoryAction(request,page_type,page_detail,c_id=None):
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    page_types = PageType.objects.all()
    # nav = Navigation.objects.filter(id=page_detail.first().id)
    # product = nav.product.all()
    #page_detail.first().name
    all_product = Products.objects.all()  
    team = Team.objects.all()
    blog = Blog.objects.filter(status=1)
    
    product = Paginator(all_product, 16)
    page_number = request.GET.get('page')
    product = product.get_page(page_number)

    global_data = GlobalSettings.objects.first()

    data = {'menus':menus,'global_data':global_data,'all_product':all_product,'product':product,'team':team,'page_detail':page_detail,'blog':blog, 'c_id':c_id}
    wishvalue = Wishlist.objects.filter(temp_id=c_id,ishere=True)
    cartvalue = Wishlist.objects.filter(temp_id=c_id,ishere=False)
    data['wishvalue'] = len(wishvalue)
    data['cartvalue'] = len(cartvalue)
    for i in page_types:      
        if page_type==i.page_name :   
            return render(request,'main/'+page_type+'.html',data)

      
    return redirect('index_ecom')
            # return reverse("SubNavigationCreate", args=[id])


def SubcategoryAction(request,page_type,page_detail,c_id=None):
    menus = Navigation.objects.filter(parent_page_id=0).order_by('position')
    breadcom = menus.first().caption
    page_types = PageType.objects.all()
    # nav = Navigation.objects.filter(id=page_detail.first().id)
    # product = nav.product.all()
    #page_detail.first().name
    all_product = Products.objects.filter(category_id = page_detail.first().id )  
    team = Team.objects.all()
    blog = Blog.objects.filter(status=1)

    product = Paginator(all_product, 16)
    page_number = request.GET.get('page')
    product = product.get_page(page_number)

    global_data = GlobalSettings.objects.first()

    data = {'menus':menus,'global_data':global_data,'all_product':all_product,'product':product,'team':team,'page_detail':page_detail,'blog':blog, 'c_id':c_id,'breadcom':breadcom}
    wishvalue = Wishlist.objects.filter(temp_id=c_id,ishere=True)
    cartvalue = Wishlist.objects.filter(temp_id=c_id,ishere=False)
    data['wishvalue'] = len(wishvalue)
    data['cartvalue'] = len(cartvalue)
    for i in page_types:      
        if page_type==i.page_name :   
            return render(request,'main/'+page_type+'.html',data)