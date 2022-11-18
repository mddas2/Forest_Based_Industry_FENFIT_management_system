from django.template.defaulttags import register
from nepallocation.models import *

@register.filter
def get_item(dictionary, key):
    try:
        # return type(dictionary)
        return dictionary.get(key)
    except:
        return "None. please select first सिफारिस शुल्क category"

@register.filter
def get_districtName(name):
    try:
        return Districts.objects.get(name=name).alt_name 
    except:
        return name      
