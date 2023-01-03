from django.template.defaulttags import register
from nepallocation.models import *
from Admin.models import BusinessType,RecomendationPriceCategory,ApplicationForm
from account.models import CustomUser
from django.db.models import Q

@register.filter
def get_item(dictionary, key):
    try:
        # return type(dictionary)
        return dictionary.get(key)
    except:
        return "None. please select first सिफारिस शुल्क category"

@register.filter
def GetMemberFormApproved(email,attribute): 
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

@register.filter
def getTotamMember(request):
    return None
    try:
        district_name = request.user.district_name
        state_name = request.user.state_name
        if request.user.role==CustomUser.DISTRICT:
            all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True,district_name=district_name).order_by('-updated_at') 
        if request.user.role==CustomUser.PRIVATE:
            all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True,union_name=request.user.email).order_by('-updated_at') 
        elif request.user.role==CustomUser.STATE:
            all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True,state_name=state_name).order_by('-updated_at')
        elif request.user.role==CustomUser.CENTRAL:
            all_data = CustomUser.objects.filter(is_verified=False,is_applyForVerified=True).order_by('-updated_at')
        else:
            all_data = None
        return all_data
    except:
        all_data = None
        return all_data

@register.filter
def getTotalApplication(request):
    try:
        if request.user.role == CustomUser.DISTRICT:
            all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__district_name__contains=request.user.district_name).order_by('-updated_at')[:5]  
        elif request.user.role == CustomUser.STATE:
            all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__state_name__contains=request.user.state_name).order_by('-updated_at')[:5]   
        elif request.user.role == CustomUser.PRIVATE:
            all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role(),user__union_name__contains=request.user.email).order_by('-updated_at')[:5] 
        elif request.user.role == CustomUser.CENTRAL:
            if request.user.get_dsc_Role() == 'central_accountant':
                all_data = ApplicationForm.objects.filter(Q(dsc=request.user.get_dsc_Role()) | Q(dsc='central_admin'),dsc__isnull=False,).order_by('-updated_at')[:5] #admin can view both data from accountant and self
            else:
                all_data = ApplicationForm.objects.filter(dsc__isnull=False,dsc=request.user.get_dsc_Role()).order_by('-updated_at')[:5]
        else:
            all_data = None 
        return all_data
    except:
        return None    

@register.filter
def getTotalNotification(request):
    try:
        app = getTotalApplication(request).count()
        member = getTotamMember(request).count()
        return app+member
    except:
        try:
            return getTotamMember(request).count()
        except:
            return 0

    
