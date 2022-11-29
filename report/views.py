import requests
from nepallocation.models import States,Districts,Municipality
from account.models import CustomUser
from Admin.models import ApplicationForm,UserApplicationDetail,UserApplicationPayment
from django.http import HttpResponse
from django.http import JsonResponse
from django.core import serializers
from django.core.serializers import json

def ApplicationFormReport(request):
     formsobj = ApplicationForm.objects.all()

def MembershipReport(request):
     member = CustomUser.objects.all()

