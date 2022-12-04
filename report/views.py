
from account.models import CustomUser
from Admin.models import ApplicationForm
from django.shortcuts import render, redirect
from django.urls import reverse
import os
from django.conf import settings

#For Data Import and export
import pandas as pd
from .serializers import *
from rest_framework.views import APIView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.decorators import permission_required

from Admin.decorators import customized_user_passes_test,is_admin_role,is_admin_group
from django.shortcuts import redirect

from rest_framework.renderers import JSONRenderer


def ApplicationFormReport(request):
     approved_admin =  CustomUser.objects.filter(role = CustomUser.CENTRAL,groups__name__contains = 'ceo').first()

     slug = "सुचिकरण सिफारिश Report"
     report_type = 'application'
     formsobj = ApplicationForm.objects.filter(dsc__isnull=False)
     # return HttpResponse(formsobj.first().dsc)
     data={
        'all_data' : formsobj,
        'export_link_name' : reverse("ExportProduct"),
        'report_type':report_type,
        'slug1' : slug,
        'approved_admin' : approved_admin
    }
     return render(request,'report/application-lists.html',data)

def MembershipReport(request):
     slug = "सदस्यता Report"
     report_type = 'membership'
     formsobj = ApplicationForm.objects.filter(user__is_applyForVerified__contains=1)
     # return HttpResponse(formsobj.first().dsc)
     data={
        'all_data' : formsobj,
        'export_link_name' : reverse("ExportProduct"),
        'report_type':report_type,
        'slug1' : slug
    }
     return render(request,'report/application-lists.html',data)

class ExportProduct(LoginRequiredMixin,APIView):

    def get(self,request):
          product_objs = ApplicationForm.objects.all()
     

          serializer = ApplicationFormSerializer(product_objs, many=True)
          # return HttpResponse(JSONRenderer().render(serializer.data))
          df = pd.DataFrame(serializer.data)
          tempname="detail"
          df.to_excel(f"report/static/excel/{tempname}.xlsx")
          file_path = os.path.join(settings.STATIC_URL, 'excel/'+str(tempname)+'.xlsx')
          return redirect(file_path)
       
