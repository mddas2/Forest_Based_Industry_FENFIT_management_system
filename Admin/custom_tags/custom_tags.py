from django.template.defaulttags import register
from nepallocation.models import *
from Admin.models import BusinessType,RecomendationPriceCategory
from account.models import CustomUser

@register.filter
def get_item(dictionary, key):
    try:
        # return type(dictionary)
        return dictionary.get(key)
    except:
        return "None. please select first सिफारिस शुल्क category"

@register.filter
def GetMemberFormApproved(email,attribute):
    if attribute == 'district_name':
        obj = CustomUser.objects.get(email = email).district_name
        return Districts.objects.get(name=obj).alt_name 
    elif attribute == 'first_name':
        obj = CustomUser.objects.get(email = email).first_name
    return obj
    try:
       if attribute == 'district_name':
            obj = CustomUser.objects.get(email = email).district_name
            return Districts.objects.get(name=obj).alt_name 
       elif attribute == 'first_name':
            obj = CustomUser.objects.get(email = email).first_name
       return obj
    except:
        return "None"

@register.filter
def get_StateName(name):
    try:
        return States.objects.get(name=name).alt_name 
    except:
        return name 

@register.filter
def get_districtName(name):
    try:
        return Districts.objects.get(name=name).alt_name 
    except:
        return name  


@register.filter
def get_MuncipalityName(name):
    try:
        return Municipality.objects.get(name=name).alt_name 
    except:
        return name      

@register.filter
def get_NepaliDate(date):
    try:
        import datetime
        import nepali_datetime
        dt = datetime.date(date.year,date.month,date.day)
        nepali_date = nepali_datetime.date.from_datetime_date(dt)
        return nepali_date
        # return nepali_date.strftime('%K-%n-%D (%k %N %G)')   
    except:
        return date

@register.filter
def get_NepaliBusinessName(eng_name):
    try:
        business_name = BusinessType.business_type[eng_name]['name_1']
        return business_name
    except:
        return eng_name

@register.filter
def getPriceCategoryNepaliName(code_name):
    try:
        nepali_name = RecomendationPriceCategory.recommendation_fee[code_name]['name_1']
        return nepali_name
    except:
        return code_name

    
