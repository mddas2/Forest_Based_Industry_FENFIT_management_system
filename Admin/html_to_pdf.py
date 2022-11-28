from django.templatetags.static import static
from django.conf import settings

from .models import CustomUser

import time
from reportlab.lib.enums import TA_JUSTIFY
from reportlab.lib.pagesizes import letter
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Image
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.units import inch

from django.http import HttpResponse
import io
from reportlab.pdfgen import canvas
from io import BytesIO, StringIO
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from datetime import datetime
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfbase import pdfmetrics

def report(request,form):
    # pdfmetrics.registerFont(TTFont("Preeti", settings.BASE_URL+static("/assets/fonts/Preeti-Font.TTF")))
    # pdfmetrics.registerFont(TTFont("Preeti-Bold", settings.BASE_URL+static("/assets/fonts/Preeti-Bold.TTF")))
    # pdfmetrics.registerFont(TTFont("Times", settings.BASE_URL+static("/assets/fonts/TIMES.TTF")))
    # pdfmetrics.registerFont(TTFont("gargi", settings.BASE_URL+static("/assets/fonts/gargi.ttf")))

    pdfmetrics.registerFont(TTFont("Preeti", settings.BASE_URL+static("/assets/fonts/Preeti-Font.ttf")))
    pdfmetrics.registerFont(TTFont("Preeti-Bold", settings.BASE_URL+static("/assets/fonts/Preeti-Bold.ttf")))
    pdfmetrics.registerFont(TTFont("Times", settings.BASE_URL+static("/assets/fonts/TIMES.ttf")))
    pdfmetrics.registerFont(TTFont("gargi", settings.BASE_URL+static("/assets/fonts/gargi.ttf")))

    response = HttpResponse(content_type="application/pdf")
    d = datetime.today().strftime('%Y-%m-%d')
    response['Content Disposition'] = f'inline; filenane="{d}.pdf"'

    import io
    buffer = BytesIO()
    styles=getSampleStyleSheet()
    styles.add(ParagraphStyle(name='Justify', alignment=TA_JUSTIFY))

    gargi_style=getSampleStyleSheet()
    gargi_style.add(ParagraphStyle(name='gargi', alignment=TA_JUSTIFY,fontName='gargi', fontSize=18,leading=28))

    preeti_style=getSampleStyleSheet()
    preeti_style.add(ParagraphStyle(name='Preeti', alignment=TA_JUSTIFY,fontName='Preeti', fontSize=24,leading=25))

    doc = SimpleDocTemplate(buffer,pagesize=letter,
                            rightMargin=72,leftMargin=72,
                            topMargin=72,bottomMargin=18)
    Story=[]

    logo = settings.BASE_URL+static("/assets/images/logo-2.png")    
    im = Image(logo, 450,60)
    Story.append(im)

    title = "laifo M sf7, bfp/fdf cfwfl/t pBf]u ;'lrs[tsf nflu l;kmfl/; kq"
    Story.append(Spacer(1, 35))
    ptext = '%s' % title
    Story.append(Paragraph(ptext, preeti_style["Preeti"]))

        
    owner_full_name = str(form.get_user_application_detail.owner_full_name) #1,5
    company_name = str(form.get_user_application_detail.company_name)  #3,6
    business_name =  str(form.get_user_application_detail.owner_full_name) #2
    union_type = str(form.get_user_application_detail.union_type) #4,7

    shree = f"{form.id} सिफारिश पत्र नम्बर"
    Story.append(Spacer(1, 10))
    ptext = '%s' % shree
    Story.append(Paragraph(ptext,  gargi_style["gargi"]))

    shree = """>L l8lehg jg sfof{no"""
    Story.append(Spacer(1, 10))
    ptext = '%s' % shree
    Story.append(Paragraph(ptext,  preeti_style["Preeti"]))

    shree = f"{form.user.district_name}"
    Story.append(Spacer(1, 2))
    ptext = '%s' % shree
    Story.append(Paragraph(ptext,gargi_style["gargi"]))
 
    Story.append(Spacer(1, 30))
    ptext = f" सञ्चालक । प्रोप्राइटर श्री {owner_full_name} स:मिल / {business_name} / {company_name} ले उद्योग दर्ता प्रमाणपत्र साथ उद्योग सुचिकृत गर्नका लागि सिफारिस माग गरि {union_type}  सुनसरी जिल्ला संघ वस्तुगत संघ माफर्त यस कार्यालयमा निवेदन दिनुभएकोमा उद्योग दर्ता प्रमाणपत्रकोआधार र प्रदेश महासंघ वस्तुगत संघको सिफारिशका आधारमा मा वन नियमावली, २०७९ को नियम १३१ को उपनियम (२) बमोजिम सञ्चालक । प्रोप्राइटर श्री {owner_full_name} को {company_name} उद्योगलाई सुचिकृत गर्नका लागि यो सिफारिसपत्र प्रदान गरिएकोले वन उद्यम सुचीकृत गरिदिनु हुन अनुरोध छ ।"
            
    Story.append(Paragraph(ptext, gargi_style["gargi"]))
    Story.append(Spacer(1, 12))

    try:
        logo = settings.BASE_URL+form.get_user_application_detail.approved_signature.url 
        im = Image(logo, 120,60)
        Story.append(im)
    except:
        pass

    ptext = 'पद कार्यकारी निर्देशक'
    Story.append(Paragraph(ptext, gargi_style["gargi"]))
    Story.append(Spacer(1, 0))

    ptext = f'नाम:{form.get_user_application_detail.approved_name}'
    Story.append(Paragraph(ptext, gargi_style["gargi"]))
    Story.append(Spacer(1, 1))

    doc.build(Story)
    pdf = buffer.getvalue()
    buffer.close()
    return pdf #for gmail

    #for download
    response = HttpResponse(content_type='application/pdf') #for download
    response['Content-Disposition'] = 'attachment; filename=certificate.pdf' #for download
    response.write(pdf)
    return response

    #for pdf
    response = HttpResponse(content_type="application/pdf")
    d = datetime.today().strftime('%Y-%m-%d')
    response['Content Disposition'] = f'inline; filenane="{d}.pdf"'
    response.write(pdf)   
    return pdf