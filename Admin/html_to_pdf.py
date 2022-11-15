
# from io import BytesIO #A stream implementation using an in-memory bytes buffer
#                        # It inherits BufferIOBase
 
from django.http import HttpResponse
from django.template.loader import get_template
import io
from xhtml2pdf import pisa  
# #difine render_to_pdf() function
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfbase.pdfmetrics import registerFont
# registerFont(TTFont('md','"E:\gargi.ttf"'))

def render_to_pdf(html):
    result = io.BytesIO() 
     #This part will create the pdf.
    pdf = pisa.pisaDocument(io.BytesIO(html.encode("utf-8")), result)
    if not pdf.err:
         #return result.getvalue()
         return HttpResponse(result.getvalue(), content_type='application/pdf')
    return None