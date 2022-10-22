from Admin.models import *

def getData(request):
    page_data = Navigation.objects.filter(name=menu)
    menus = Navigation.objects.order_by('position')
    data = {'menus':menus,'page_data':page_data}
