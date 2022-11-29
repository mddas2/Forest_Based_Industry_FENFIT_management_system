from django.urls import path
from . import views

urlpatterns = [
    #**********User Authentication******************************************
    path('application-form', views.ApplicationFormReport, name='ApplicationFormReport'),
    path('membership', views.MembershipReport, name='MembershipReport'),
    path('/export-excel',views.ExportProduct.as_view()  , name='ExportProduct' ),


]