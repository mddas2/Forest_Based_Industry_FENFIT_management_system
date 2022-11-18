import requests
from nepallocation.models import States,Districts,Municipality
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse
from account.models import CustomUser
from django.contrib import messages

def OnlinePayment(request):
    data = {}
    return render(request, 'online-payment/payment.html',data)

def PaymentWith(request):
    if request.POST:        
        application_id = request.POST['application_id']
        email_id = request.POST['email_id']
        try:
            user = CustomUser.objects.get(email=email_id)
        except:
            messages.info(request,"user not Found")
            return redirect('OnlinePayment')
        applicationform = user.applicationform
        if applicationform.all().first() != None:
            # return HttpResponse(applicationform.all().first().id)
            messages.info(request,"User found successfully. please payment with another method ")
            # return HttpResponse(applicationform.all().first().id)
        else:
            messages.info(request,"user not found")
        return redirect('OnlinePayment')

def EsewaPayment(request):
    return HttpResponse("esewa payment")