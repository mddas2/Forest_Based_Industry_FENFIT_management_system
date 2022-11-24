from django.urls import path
from . import payment

urlpatterns = [
    #**********User Authentication******************************************
    path('', payment.OnlinePayment, name='OnlinePayment'),
    path('PaymentWith', payment.PaymentWith, name='PaymentWith'),
    path('esewa-payment', payment.EsewaPayment, name='EsewaPayment'),

    path('business-price-category', payment.BusinessPriceCategory, name='BusinessPriceCategory'),

]