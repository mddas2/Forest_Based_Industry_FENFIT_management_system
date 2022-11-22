from django.http import HttpResponse
import io
from reportlab.pdfgen import canvas
from io import BytesIO, StringIO
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import A4
from datetime import datetime
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfbase import pdfmetrics
from django.templatetags.static import static
from django.conf import settings

def report(request):
    response = HttpResponse(content_type="application/pdf")
    d = datetime.today().strftime('%Y-%m-%d')
    response['Content Disposition'] = f'inline; filenane="{d}.pdf"'

    buffer = BytesIO()
    p = canvas.Canvas (buffer, pagesize=A4)

    #Data to print  
    # data = {
    # "Posts": [{"title":"Bython","Views" :500}, {"title": "JavaScript", "views":500}],
    # "Videos" :[{"title": "Python Prooramming", "Likes":500}],
    # "Blogs": [{"nane":"Report Lab","Likes":500, "claps":500}],
    # }

    pdfmetrics.registerFont(TTFont("Preeti", settings.BASE_URL+static("/assets/fonts/Preeti-Font.ttf")))
    pdfmetrics.registerFont(TTFont("Preeti-Bold", settings.BASE_URL+static("/assets/fonts/Preeti-Bold.ttf")))
    pdfmetrics.registerFont(TTFont("Times", settings.BASE_URL+static("/assets/fonts/Times.ttf")))
    pdfmetrics.registerFont(TTFont("gargi", settings.BASE_URL+static("/assets/fonts/gargi.ttf")))
    
    # Start writing the POF here
    p.setFillColorRGB(0, 0,0)
    p.drawImage(settings.BASE_URL+static("/assets/images/logo-2.png"),30,740,550,75,mask='auto')
    p.line(25, 730,575, 730)

    p.setFont("Preeti", 22, leading=None)
    p.drawString(450,690,"ldlt M") #miti

    p.setFont("Times", 15, leading=None)
    p.drawString(493,690,d) #date

    p.setFont("Preeti", 22, leading=None)
    p.drawString(25,650,">Ldfg cWoIfHo',") #xirman
    p.drawString(25,625,"g]kfn jg k}bfjf/ pBf]u Joj;foL ;+3")

    p.setFont("Preeti-Bold", 22, leading=None)
    p.drawString(200,550,"laifo M ;b:otf ;DaGwdf . ")#bisaya 550

    # p.setFont("Preeti", 22, leading=None)
    # p.drawString(25,505,""";~rfns . k|f]k|fO6/ &gt;L ============= ;Mldn ÷ e]lgo/ tyf KnfO{p8 ÷ """) 
    # p.drawString(25,480,"""==============n] pBf]u btf{ k|df0fkq ;fy pBf]u ;&#39;lrs[t ug{sf nflu l;kmfl/;""") 
    # p.drawString(25,455,""" dfu ul/ ===============lhNnf ;+3 . j:t&#39;ut ;+3 dfkm{t o; sfof{nodf lgj]bg """) 
    # p.drawString(25,430,"""lbg&#39; ePsf]df pBf]u btf{ k|df0fkqsf] cfwf/ / =================k|b]z""") 
    # p.drawString(25,405,"""dxf;+3 . j:t&#39;ut ;+3sf] l;kmfl/zsf cfwf/df df jg lgodfjnL, @)&amp;( sf] lgod !#! sf]""") 
    # p.drawString(25,380,"""k}/jL ug]{ o; lhNnf ;+3sf] ljwfgsf] clwgdf /lx gLlt, sfo{s|d tyf lg0f{ox?""") 
    # p.drawString(25,355,"""pklgod -@_ adf]lhd ;~rfns . k|f]k|fO6/ &gt;L =============""")

    p.setFont("gargi", 22, leading=None)
    p.drawString(25,505,""" """) 
    p.drawString(25,480,""" """) 
    p.drawString(25,455,""" """) 
    p.drawString(25,430,""" """) 
    p.drawString(25,405,""" """) 
    p.drawString(25,380,""" """) 
    p.drawString(25,355,""" """)

    p.drawString(350,210,"""cWoIf M """) 
    p.drawString(350,180,"""b:tvt M""") 
    p.drawImage(settings.BASE_URL+static("/assets/images/signature.jpeg"),410,180,80,60,mask='auto') 



    #Render data
   

    p.setTitle(f'Report on {d}')
#     p.showPage()
    p.save()
    pdf = buffer.getvalue()
    buffer. close()
    response.write(pdf) #hide for gmail
    return response #hide for gmail
    # return pdf      #unhide for gmail