
from account.models import CustomUser
from Admin.models import ApplicationForm
from django.shortcuts import render, redirect
from django.urls import reverse
import os
from django.conf import settings

from django.http import HttpResponse

#For Data Import and export
import pandas as pd
from .serializers import *
from rest_framework.views import APIView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.decorators import permission_required

from Admin.decorators import customized_user_passes_test,is_admin_role,is_admin_group
from django.shortcuts import redirect
from Admin.decorators import customized_user_passes_test,is_admin_role,is_central_role
from django.contrib.auth.decorators import login_required
from rest_framework.renderers import JSONRenderer
from django.core.paginator import Paginator
from django.db.models import Q

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def ApplicationFormReport(request):
     approved_admin =  CustomUser.objects.filter(role = CustomUser.CENTRAL,groups__name__contains = 'ceo').first()
     slug = "सुचिकरण सिफारिश रिपोर्ट"
     report_type = 'application'
     all_data = ApplicationForm.objects.filter(dsc__isnull=False).order_by('-id')

     page_number = request.GET.get('page')
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
    
     # return HttpResponse(formsobj.first().dsc)
     ajaxsearch = 'member'
     data={
        'all_data' : all_data,
        'ajaxsearch' : ajaxsearch,
        'next' : next,
        'prev' : prev,
        'range' : range,
        'export_link_name' : reverse("ExportProduct"),
        'report_type':report_type,
        'slug1' : slug,
        'approved_admin' : approved_admin
    }
     return render(request,'report/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def MembershipReport(request):
     slug = "सदस्यता रिपोर्ट"
     report_type = 'membership'
     all_data = ApplicationForm.objects.filter(user__is_applyForVerified__contains=1).order_by('-id')

     page_number = request.GET.get('page')
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
     # return HttpResponse(formsobj.first().dsc)
     data={
        'all_data' : all_data,
        'next' : next,
        'prev' : prev,
        'range' : range,
        'export_link_name' : reverse("ExportProduct"),
        'report_type':report_type,
        'slug1' : slug
    }
     return render(request,'report/application-lists.html',data)

@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def ApplicationFormSearch(request):
    if request.GET:
        try:
            search = request.GET['search']
        except:
            return redirect('ApplicationFormReport')
        try:
            id = int(search)
        except:
            id = 0
        approved_admin =  CustomUser.objects.filter(role = CustomUser.CENTRAL,groups__name__contains = 'ceo').first()

        slug = "सुचिकरण सिफारिश रिपोर्ट"
        report_type = 'application'

        all_data = ApplicationForm.objects.filter(dsc__isnull=False).filter(Q(user__email__contains=search) | Q(id=id) | Q(user__first_name__contains=search) | Q(user__phone__contains=search) | Q(user__district_name__contains=search) | Q(user__state_name__contains=search) | Q(dsc__contains=search) ).order_by('-id')

        page_number = request.GET.get('page')
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
        
        # return HttpResponse(formsobj.first().dsc)
        data={
            'all_data' : all_data,
            'next' : next,
            'prev' : prev,
            'range' : range,
            'export_link_name' : reverse("ExportProduct"),
            'report_type':report_type,
            'slug1' : slug,
            'approved_admin' : approved_admin
        }
        return render(request,'report/application-lists.html',data)
    else:
        return HttpResponse('unknown request')
    # return HttpResponse(request.GET['search'])
@login_required(login_url=settings.LOGIN_URL)
@customized_user_passes_test(is_central_role)
def MembershipSearch(request):
     if request.GET:
        slug = "सदस्यता रिपोर्ट"
        report_type = 'membership'
        search = request.GET['search']
        try:
            id = int(search)
        except:
                id = 0
        all_data = ApplicationForm.objects.filter(user__is_applyForVerified__contains=1).order_by('-id').filter(Q(user__email__contains=search) | Q(id=id) | Q(user__first_name__contains=search) | Q(user__phone__contains=search) | Q(user__district_name__contains=search) | Q(user__state_name__contains=search) | Q(dsc__contains=search) ).order_by('-id')

        page_number = request.GET.get('page')
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
        # return HttpResponse(formsobj.first().dsc)
        data={
            'all_data' : all_data,
            'next' : next,
            'prev' : prev,
            'range' : range,
            'export_link_name' : reverse("ExportProduct"),
            'report_type':report_type,
            'slug1' : slug
        }
        return render(request,'report/application-lists.html',data)
     else:
        return HttpResponse("unknown request")

def AjaxSearch(request):
    from django.http import JsonResponse
    if request.GET:
        search = request.GET['search']
        try:
            id = int(search)
        except:
            id = 0
        all_data = CustomUser.objects.filter(Q(email__contains=search) | Q(id=id) | Q(first_name__contains=search) | Q(phone__contains=search) | Q(district_name__contains=search) | Q(state_name__contains=search) ).order_by('-id')
        all_data = list(all_data.values('email','first_name'))
        return JsonResponse(all_data,safe=False)
    else:
        return HttpResponse("not allowed here in ajax search")


class ExportProduct(LoginRequiredMixin,APIView):
    def get(self,request):
          if request.user.role == CustomUser.CENTRAL:
               product_objs = ApplicationForm.objects.all()   
               serializer = ApplicationFormSerializer(product_objs, many=True)
               # return HttpResponse(JSONRenderer().render(serializer.data))
               df = pd.DataFrame(serializer.data)
               tempname="detail"
               df.to_excel(f"media/excel/{tempname}.xlsx")
               file_path = os.path.join(settings.MEDIA_URL, 'excel/'+str(tempname)+'.xlsx')
               return redirect(file_path)
          else:
               return redirect(ApplicationFormReport)



       
