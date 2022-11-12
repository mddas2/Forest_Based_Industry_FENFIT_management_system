import requests
from django.conf import settings
from django.core.mail import send_mail

def SendMail(subject,message,email_from,recipient_list):
    send_mail( subject, message, email_from, recipient_list )

def SendSms(to,text):
    r = requests.get("http://api.sparrowsms.com/v2/sms/",
                  params={'token' : 'v2_Z24uSz5obV36qftmaHX6wrX9tiL.vFHx',
                  'from'  : 'Demo',
                  'to'    : to,
                  'text'  : text})
    status_code = r.status_code
    response = r.text
    response_json = r.json()
    return response_json