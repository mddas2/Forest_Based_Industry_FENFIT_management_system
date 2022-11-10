import requests

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