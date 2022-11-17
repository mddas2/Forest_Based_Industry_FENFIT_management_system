from django.urls import path
from . import payment

urlpatterns = [
    #**********User Authentication******************************************
    path('', payment.OnlinePayment, name='OnlinePayment'),
    path('esewa-payment', payment.EsewaPayment, name='EsewaPayment'),

]