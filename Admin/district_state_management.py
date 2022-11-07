from .models import *
from account.models import *
from django.http import HttpResponse

def action(request):
    states_district_dictionary_list = CustomUser.states_district_dictionary_list
    print(states_district_dictionary_list['province_1'][0])
    return HttpResponse(states_district_dictionary_list['province_1'])
    states = CustomUser.states
    try:
        for state in states:
            States.objects.create(state_code=state[0],state_name=state[1])
    except:
        pass



    # province_1 = CustomUser.province_1
    # province_2 = CustomUser.province_2
    # province_3 = CustomUser.province_3
    # province_4 = CustomUser.province_4
    # province_5 = CustomUser.province_5
    # province_6 = CustomUser.province_6
    # province_7 = CustomUser.province_7

    # return HttpResponse(province_1)

    return HttpResponse('Total states,district inserted completed sucessfully!!!')
    

