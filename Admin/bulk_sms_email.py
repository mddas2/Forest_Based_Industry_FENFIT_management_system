import requests
from django.conf import settings
from django.core.mail import send_mail
from django.core.mail import EmailMessage
from django.http import HttpResponse

def SendMail(subject,message,email_from,recipient_list):
    send_mail( subject, message, email_from, recipient_list )


def SendMailAttachment(subject,message,email_from,pdf,recipient_list):
    mail = EmailMessage(subject, message, email_from, recipient_list)
    mail.attach('recomendation-certificate.pdf' ,pdf, 'application/pdf')
    mail.send()     
    # return pdf   
    
def SendMailAttachment_Pdf(subject,message,email_from,pdf,recipient_list):
    mail = EmailMessage(subject, message, email_from, recipient_list)
    mail.attach("document.pdf", pdf.read())
    # mail.attach('recomendation-certificate.pdf' ,pdf, 'application/pdf')
    mail.send()     
    # return pdf   

def SendSmsSparrow(to,text):
    r = requests.get("http://api.sparrowsms.com/v2/sms/",
                  params={'token' : 'v2_DQnxdpRc7NFevlo9VDvm68MNTUj.DDJT',
                  'from'  : 'Demo',
                  'to'    : to,
                  'text'  : text})
    status_code = r.status_code
    response = r.text
    response_json = r.json()
    return response_json

def SendSmsRadiant(to,message):
    token = 'dMs5g3thfBgpJPX61693HR4hAualD1wSpya4'
    sender =  'fenfit'
    to = '9808059156,9812520778'
    message = 'this is testing message !!! '

    r = requests.get("http://sms.radiantnepal.com/api/v3/sms?", # this api from radiant nepal
                params={'token' : token,
                    'sender'  : sender,
                    'to'    : to,
                    'message'  : message,
            })