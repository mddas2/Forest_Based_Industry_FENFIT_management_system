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
from django.http import HttpResponse
token = "vZViG4G-do4Ub-x4OzQT0LSJ"

def VDCbyDistrict(request):
    print(request.user.district_name)
    district = requests.get(
            "https://nepallocation.com.np/api/v1/district?name=saptary",
            headers={'Authorization': 'Bearer ' + token}
            )
    print(district.json())
    return district.json()

    response = requests.get(
    "https://nepallocation.com.np/api/v1/municipality/list",
    headers={'Authorization': 'Bearer ' + token}
    )
    total_vdc =  response.json()['data']
    return total_vdc['data']
