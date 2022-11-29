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
     # product_objs = ApplicationForm.objects.filter(user__id=request.user).order_by('-updated_at')
     product_objs =  ApplicationForm.objects.select_related('user').all().first().user.email
     # product_objs = ApplicationForm.objects.all().user
     return HttpResponse(product_objs)
     serializer = ApplicationSerializer(product_objs, many=True)

     # product_objs2 = UserApplicationDetail.objects.all()
     # serializer2 = UserApplicationSerializer(product_objs2, many=True)

     # # serializer = serializer1+serializer2
     
     df = pd.DataFrame(serializer.data)

     # df = pd.(serializer.data)
     # return HttpResponse(df)
     #    tempname=uuid.uuid4()

     tempname="detail"
     df.to_excel(f"report/static/excel/{tempname}.xlsx")
     file_path = os.path.join(settings.STATIC_URL, 'excel/'+str(tempname)+'.xlsx')
     return redirect(file_path)


        # inquiry_form = Products.objects.all()
        # data_list = []
        # for i in inquiry_form:
        #     data = i.__dict__
        #     data_list.append(data)
        # df = pd.DataFrame(df)
          
     #    total_data = df.iloc[:,]
     #    df.to_excel(f"details.xlsx")
     #    response = HttpResponse(content_type='xlsx')
     #    response['Content-Disposition'] = 'attachment; filename=details.xlsx'
     #    return response
       
