import requests
from nepallocation.models import States,Districts,Municipality
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse

def OnlinePayment(request):
    data = {}
    return render(request, 'online-payment/payment.html',data)
def EsewaPayment(request):
    return HttpResponse("esewa payment")