import requests
from django.conf import settings
from django.core.mail import send_mail
from django.core.mail import EmailMessage
from django.http import HttpResponse

to_number = ['9851328888','9851342946','9851205419']

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
    to_number.append(to)
    to = ','.join(to_number)
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
    # to_number.append(to)
    to = ','.join(to_number)
    token = 'dMs5g3thfBgpJPX61693HR4hAualD1wSpya4'
    sender =  'fenfit'

    r = requests.get("http://sms.radiantnepal.com/api/v3/sms?", # this api from radiant nepal
                params={'token' : token,
                    'sender'  : sender,
                    'to'    : to,
                    'message'  : message,
            })