from django.urls import path
from . import views,district_states_vdc

urlpatterns = [
    #**********User Authentication******************************************
    path('districts', district_states_vdc.GetDistricts, name='GetDistricts'),
    path('states', district_states_vdc.GetStates, name='GetStates'),
    path('vdc', district_states_vdc.GetVdc, name='GetVdc'),
    path('insert', district_states_vdc.InsertAll, name='Insert'),

    path('member', district_states_vdc.GetMember, name='GetMember'),

]