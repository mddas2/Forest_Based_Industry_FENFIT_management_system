from django.template.defaulttags import register

@register.filter
def get_item(dictionary, key):
    try:
        # return type(dictionary)
        return dictionary.get(key)
    except:
        return "please select first सिफारिस शुल्क category"
