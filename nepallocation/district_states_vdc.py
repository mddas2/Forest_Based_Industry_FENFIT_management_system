from . import models
"""
https://nepallocation.com.np/
You will need to install requests library:
python -m pip install requests

import requests
token = "vZViG4G-do4Ub-x4OzQT0LSJ"
response = requests.get(
     "https://nepallocation.com.np/api/v1/district/list",
     headers={'Authorization': 'Bearer ' + token}
)
print(response.json())

# Get Municipalities from District
To get the municipalities for the district. This API request returns a list of municipalities of a specific district. And as a response it returns the json data with 'municipality_id', 'name','alt_name'.
API ACCESS:
https://nepallocation.com.np/api/v1/district/12/municipalities
"""
import requests
from nepallocation.models import States,Districts,Municipality
from account.models import CustomUser
from django.http import HttpResponse
from django.http import JsonResponse
from django.core import serializers
from django.core.serializers import json

token = "vZViG4G-do4Ub-x4OzQT0LSJ"

def GetMember(request):
     import json
     members = CustomUser.objects.filter(role = CustomUser.PRIVATE, is_verified = 1).all()
     response = serializers.serialize('json', list(members),fields=('first_name','email','company_name'),ensure_ascii=False)
     response = json.loads(response)
     response = {
          'data' : response
     }
     return JsonResponse(response)
 
     

def GetStates(request):
     response = requests.get(
          "https://nepallocation.com.np/api/v1/province/list",
          headers={'Authorization': 'Bearer ' + token}
          )
     states =  response.json()['data']
     states = states['data']
     # return HttpResponse(states)
     response = {
          'data' : states,
     }
     return JsonResponse(response)   

def GetDistricts(request):
     response = requests.get(
          "https://nepallocation.com.np/api/v1/district/list",
          headers={'Authorization': 'Bearer ' + token}
          )

     districts = response.json()['data']
     districts = districts['data']
     # return HttpResponse(districts)

     response = {
          'data' : districts,
     }
     return JsonResponse(response)   


def GetVdc(request):
     response = requests.get(
          "https://nepallocation.com.np/api/v1/municipality/list",
          headers={'Authorization': 'Bearer ' + token}
          )
     print(response.json())

def getDistrictByProvienceId(provience_id):
     response = requests.get(
     "https://nepallocation.com.np/api/v1/province/" + provience_id + "/district",
             headers={'Authorization': 'Bearer ' + token}
        )

     districts = response.json()['data']
     return districts

def getMuncipalityByDistrictId(district_id):
     response = requests.get(
     "https://nepallocation.com.np/api/v1/district/" + district_id+ "/municipalities",
             headers={'Authorization': 'Bearer ' + token}
        )

     municipalities = response.json()['data']
     return municipalities

def storeStates(request,state):
     #insert
     data = {
          'province_id' : state['province_id'],
          'name' : state['name'],
          'alt_name' : state['alt_name'],
     }
     id,create = States.objects.update_or_create(province_id=state['province_id'],defaults=data)
     return id

def storeDistrict(request,state,state_id):
     #insert
     data = {
          'district_id' : state['district_id'],
          'name' : state['name'],
          'alt_name' : state['alt_name'],
          'state_id' : state_id
     }
     id,create = Districts.objects.update_or_create(district_id = state['district_id'] , defaults = data)
     return id

def storeMunicipality(request,municipality,state_id,district_id):
     #insert
     data = {
          'municipality_id' : municipality['municipality_id'],
          'name' : municipality['name'],
          'alt_name' : municipality['alt_name'],
          'state_id' : state_id,
          'district_id' : district_id,
     }
     id,create = Municipality.objects.update_or_create(municipality_id = municipality['municipality_id'] , defaults = data)
     return id

def InsertAll(request):
     return HttpResponse("it is blocked , can not be insert")
     response = requests.get(
          "https://nepallocation.com.np/api/v1/province/list",
          headers={'Authorization': 'Bearer ' + token}
          )
     states =  response.json()['data']
     states = states['data']
     # return HttpResponse(states)
     for state in states:
          state_store = storeStates(request , state)
          # return HttpResponse("inserted")
          state_id = str(state['province_id'])
          districts = getDistrictByProvienceId(state_id)
          for district in districts:
               district_store = storeDistrict(request,district,state_store.id)#insert district
               district_id = str(district['district_id'])
               municipalities = getMuncipalityByDistrictId(district_id)
               for municipality in municipalities:
                    print(municipality)
                    try:
                         storeMunicipality(request,municipality,state_store.id,district_store.id)
                         print("[Success]",municipality)
                    except:
                         print("[Fail]",municipality)
     return HttpResponse("All data inserted successfully")
                    



