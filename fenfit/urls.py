from django.urls import path
from . import views

urlpatterns = [
    #**********User Authentication******************************************
    path('', views.WebsIteindex, name='WebsIteindex'),
]