# from django.template import Library
# register = Library()

from django import template

register = template.Library()

def times(count, start):
    if start > 3 :
        return range(start-2,count)
    return range(1,count)

register.filter('times',times)