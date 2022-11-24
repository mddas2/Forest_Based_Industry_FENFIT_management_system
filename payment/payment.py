import requests
from nepallocation.models import States,Districts,Municipality
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse
from account.models import CustomUser
from Admin.models import RecomendationPriceCategory
from django.contrib import messages
from django.http import JsonResponse

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

def BusinessPriceCategory(request): 
    recommendation_fee = RecomendationPriceCategory.recommendation_fee

    try:
        ammount = int(request.GET['ammount'])
    except:
        ammount = 1000000000
    try:
        ajax = request.GET['ajax']
    except:
        ajax = '0'
    if ammount == 0:
        response = {
            'price_category' : recommendation_fee['old_unregistered_non_payment']
        }
        
    elif ammount < 2500000:
        response = {
            'price_category' : recommendation_fee['less_than_25_lakh']
        }
       
    elif ammount >= 2500000 and ammount < 10000000:
        response = {
            'price_category' : recommendation_fee['greater_than_25_lakh_and_less_than_1_crode']
        }
        
    elif ammount >= 10000000 and ammount < 30000000:
        response = {
            'price_category' : recommendation_fee['greater_than_1_crode_and_less_than_3_crode']
        }

    elif ammount >= 30000000:
        response = {
            'price_category' : recommendation_fee['greater_than_3_crode']
        }
    else:
        response = {
            'price_category' : recommendation_fee['old_unregistered_non_payment']
        }
    import json
    if ajax == '1':
        return JsonResponse(response)        
    else:
        return json.dumps(response)
    
