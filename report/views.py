import requests
from nepallocation.models import States,Districts,Municipality
from account.models import CustomUser
from Admin.models import ApplicationForm,UserApplicationDetail,UserApplicationPayment
from django.http import HttpResponse
from django.http import JsonResponse
from django.core import serializers
from django.core.serializers import json
from django.shortcuts import render, redirect
from django.urls import reverse
import os

#For Data Import and export
import pandas as pd
from .serializers import *
from rest_framework.views import APIView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.decorators import user_passes_test
from django.contrib.auth.decorators import permission_required
from wsgiref.util import FileWrapper
from Admin.decorators import customized_user_passes_test,is_admin_role,is_admin_group
from django.shortcuts import redirect

from rest_framework.renderers import JSONRenderer


def ApplicationFormReport(request):
     formsobj = ApplicationForm.objects.all()
     # return HttpResponse(formsobj.first().dsc)
     data={
        'all_data' : formsobj,
        'export_link_name' : reverse("ExportProduct"),
    }
     return render(request,'report/application-lists.html',data)

def MembershipReport(request):
     member = CustomUser.objects.all()

class ExportProduct(LoginRequiredMixin,APIView):

    def get(self,request):
          product_objs = ApplicationForm.objects.all()
     

          serializer = ApplicationFormSerializer(product_objs, many=True)
          return HttpResponse(JSONRenderer().render(serializer.data))

          serializer = ApplicationFormSerializer(product_objs, many=True)
          return JsonResponse(serializer)
          return HttpResponse(serializer)     
          df = pd.DataFrame(serializer.data)
          tempname="detail"
          df.to_excel(f"report/static/excel/{tempname}.xlsx")
          file_path = os.path.join(settings.STATIC_URL, 'excel/'+str(tempname)+'.xlsx')
          return redirect(file_path)
       
