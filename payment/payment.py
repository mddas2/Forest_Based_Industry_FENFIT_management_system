import requests
from nepallocation.models import States,Districts,Municipality

from django.http import HttpResponse

def OnlinePayment(request):
    return HttpResponse("all payment")

def EsewaPayment(request):
    return HttpResponse("esewa payment")