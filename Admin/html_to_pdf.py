

from django.templatetags.static import static
from django.conf import settings

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

def report(request):
    pdfmetrics.registerFont(TTFont("Preeti", settings.BASE_URL+static("/assets/fonts/Preeti-Font.ttf")))
    pdfmetrics.registerFont(TTFont("Preeti-Bold", settings.BASE_URL+static("/assets/fonts/Preeti-Bold.ttf")))
    pdfmetrics.registerFont(TTFont("Times", settings.BASE_URL+static("/assets/fonts/Times.ttf")))
    pdfmetrics.registerFont(TTFont("gargi", settings.BASE_URL+static("/assets/fonts/gargi.ttf")))
    response = HttpResponse(content_type="application/pdf")
    d = datetime.today().strftime('%Y-%m-%d')
    response['Content Disposition'] = f'inline; filenane="{d}.pdf"'

    import io
    buffer = BytesIO()
    styles=getSampleStyleSheet()
    styles.add(ParagraphStyle(name='Justify', alignment=TA_JUSTIFY))

    styles1=getSampleStyleSheet()
    styles1.add(ParagraphStyle(name='gargi', alignment=TA_JUSTIFY,fontName='gargi', fontSize=18,leading=24))

    doc = SimpleDocTemplate(buffer,pagesize=letter,
                            rightMargin=72,leftMargin=72,
                            topMargin=72,bottomMargin=18)
    Story=[]
    logo = settings.BASE_URL+static("/assets/images/logo-2.png")

    buffer1 = BytesIO()
    p = canvas.Canvas (buffer1, pagesize=A4)
    p.setFillColorRGB(0, 0,0)
    p.drawImage(logo,30,740,550,75,mask='auto')
    p.save()
    pdf1 = buffer1.getvalue()
    buffer1.close()

    title = "नेपाल वन पैदावार उद्योग व्यवसायी संघ जिल्ला सुनसरी सदस्यता अद्यावद्यिक प्रमाण पत्र ।"

    im = Image(logo, 450,60)
    Story.append(im)

    Story.append(Spacer(1, 12))
    ptext = '%s' % title
    Story.append(Paragraph(ptext, styles1["gargi"]))
    Story.append(Spacer(1, 12))

    var1='v'
    ptext = """तपाईले सदस्यता अद्यावद्यिकका लागि मिति 2079-08-04 मा पेश गर्नु भएको आबेदन अनुसार त्यहाँ संस्थाको विधान अनुरुप का कार्यहरु सम्पन्न गरि आबद्धताका लागि बुझाउनु पर्ने दस्तुर समेत बुझाई सक्नु भएकोले ं(जुन संघ वा बस्तुगत संघ छनौट गरेर आवेदन गरेको हुन्छ त्यहि संघ वा वस्तुगत संघको नाम आउने वनाउनेसंघको विधान बमोजिम मिति २०८०।००।०० सम्म बहाल रहने गरि सदस्यता अद्यावद्यिक प्रमाण पत्र प्रदान गरिएको छ । संघको उद्धेश्य परिपुर्तिमा विधान बमोजिम सदस्यहरकोहित रक्षार्थ क्रियाशील हुनुहुनेछ भन्नेविश्वास लिएकोछु। तपाइर्क ो कार्यकाल सफल र उत्कृष्ट रहोस भन्ने शुभकामना ब्यक्त गर्दछु %s ।""" % (var1)
            
    Story.append(Paragraph(ptext, styles1["gargi"]))
    Story.append(Spacer(1, 12))

    ptext = 'Thank you'
    Story.append(Paragraph(ptext, styles["Normal"]))
    Story.append(Spacer(1, 12))

    ptext = 'Sincerely,'
    Story.append(Paragraph(ptext, styles["Normal"]))
    Story.append(Spacer(1, 48))

    ptext = 'Ima Sucker'
    Story.append(Paragraph(ptext, styles["Normal"]))
    Story.append(Spacer(1, 12))
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
        
