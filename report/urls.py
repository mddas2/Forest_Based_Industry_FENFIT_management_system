from django.urls import path
from . import views

urlpatterns = [
    #**********User Authentication******************************************
    path('application-form', views.ApplicationFormReport, name='ApplicationFormReport'),
    path('application-search', views.ApplicationFormSearch, name='ApplicationFormSearch'),

    path('membership', views.MembershipReport, name='MembershipReport'),
    path('membership-search', views.MembershipSearch, name='MembershipSearch'),

    path('ajax-search', views.AjaxSearch, name='AjaxSearch'),

    path('export-excel',views.ExportProduct.as_view()  , name='ExportProduct' ),


]