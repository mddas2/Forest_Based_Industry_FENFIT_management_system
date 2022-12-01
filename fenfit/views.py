from django.shortcuts import render

import requests
from nepallocation.models import States,Districts,Municipality
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.http import HttpResponse
from account.models import CustomUser
from Admin.models import RecomendationPriceCategory
from django.contrib import messages
from django.http import JsonResponse

def WebsIteindex(request):
    data = {}
    return HttpResponse("index")
    # return render(request, 'online-payment/payment.html',data)
