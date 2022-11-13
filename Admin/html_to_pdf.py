
# from io import BytesIO #A stream implementation using an in-memory bytes buffer
#                        # It inherits BufferIOBase
 
# from django.http import HttpResponse
# from django.template.loader import get_template
 

 
# from xhtml2pdf import pisa  
# #difine render_to_pdf() function
 
# def render_to_pdf(html):
#     result = BytesIO() 
#      #This part will create the pdf.
#     pdf = pisa.pisaDocument(BytesIO(html.encode("utf-8")), result)
#     if not pdf.err:
#          return result.getvalue()
#          #return HttpResponse(result.getvalue(), content_type='application/pdf')
#     return None