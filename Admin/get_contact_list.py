from django.http import HttpResponse
from django.db.models import Q
from account.models import CustomUser

def getExactEmailList(request,application_form_obj):
    user_email = application_form_obj.user.email
    union_type = application_form_obj.user.union_type
    who_approrved = application_form_obj.application_form_approved_detailed.filter(~Q(approved_by__role__contains = CustomUser.CENTRAL))
    email_list = []
    for usr in  who_approrved:
        if usr.approved_by.email in email_list:
            pass
        else:
            email_list.append(usr.approved_by.email)
            email_list.append(usr.approved_by.division_forest_email)
    ceo_obj = CustomUser.objects.filter(role = CustomUser.CENTRAL,groups__name__contains = 'ceo')
    for user in ceo_obj:
        email_list.append(user)
    # email_list.append('info@dofsc.gov.np')
    # email_list.append('info@mofe.gov.np')
    return email_list
    # if union_type == 'district':
        
    # elif union_type == 'private':


def getExactNumberList(request,application_form_obj):
    return 1