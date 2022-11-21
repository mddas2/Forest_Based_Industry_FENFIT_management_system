from ast import keyword
from email.mime import image
from email.policy import default
from enum import unique
from multiprocessing import current_process
from statistics import mode
from unicodedata import name
# from tkinter import CASCADE
# from turtle import position, update
from django.db import models
from account.models import CustomUser
from django.conf import settings
from django.contrib.humanize.templatetags import humanize

class Navigation(models.Model):
    # product = models.ForeignKey('Products',on_delete=models.CASCADE,null=True)
    parent = models.ForeignKey('self', related_name="childs",on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=255)
    parent_page_id = models.IntegerField(default=0)
    caption = models.CharField(max_length=255 , null=True)
    status = models.BooleanField(default=True)
    page_type = models.CharField(max_length=255,null=False,default=False)
    title = models.CharField(max_length=500,null=True)
    short_description = models.CharField(max_length=3000, null=True)
    long_contents = models.TextField(max_length=255,null=True)
    meta_title = models.CharField(max_length=255,null=True)
    keyword = models.CharField(max_length=255,null=True)
    position = models.IntegerField()
    banner_image1 = models.ImageField(upload_to='navigation/banner1', null=True)
    banner_image2 = models.ImageField(upload_to='navigation/banner2', null=True)
    icon_image = models.ImageField(upload_to='navigation/icon', null=True)
    created_at = models.DateTimeField(auto_now=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)

    @property
    def getBannerImage1(self):
        if self.banner_image1 :
            return self.banner_image1.url
        return ''

class HomeNavigation(models.Model):
    # product = models.ForeignKey('Products',on_delete=models.CASCADE,null=True)
    parent = models.ForeignKey('self', related_name="childs",on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=255)
    parent_page_id = models.IntegerField(default=0)
    caption = models.CharField(max_length=255 , null=True)
    status = models.BooleanField(default=True)
    page_type = models.CharField(max_length=255,null=False,default=False)
    title = models.CharField(max_length=500,null=True)
    short_description = models.CharField(max_length=3000, null=True)
    long_contents = models.TextField(max_length=255,null=True)
    meta_title = models.CharField(max_length=255,null=True)
    keyword = models.CharField(max_length=255,null=True)
    position = models.IntegerField()
    banner_image1 = models.ImageField(upload_to='home/banner1', null=True)
    banner_image2 = models.ImageField(upload_to='home/banner2', null=True)
    icon_image = models.ImageField(upload_to='home/icon', null=True)
    created_at = models.DateTimeField(auto_now=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    @property
    def getBannerImage1(self):
        if self.banner_image1 :
            return self.banner_image1.url
        return ''        

class UserApplicationDetail(models.Model):
    user = models.ForeignKey(CustomUser,related_name="applicationdetail",on_delete=models.CASCADE,null=True)
    owner_full_name = models.CharField(max_length=205)
    company_name = models.CharField(max_length=205,null=True)

    union_type = models.CharField(max_length=205,null=True)
    union_name = models.CharField(max_length=205,null=True)

    business_name = models.CharField(max_length=205, null=True)
    business_price_category = models.CharField(max_length=205, null=True)
    is_reniew = models.BooleanField(null=True,default=False)
    payment_rupees = models.IntegerField(null=True)

    voucher_number = models.CharField(max_length=505, null=True)
    municipality = models.CharField(max_length=205,null=True)
    ward_number = models.CharField(max_length=205 , null=True)
    tole = models.CharField(max_length=205, default=True)

    authorized_capital_of_company = models.IntegerField(null=True) #कम्पनीको अधिकृत पुजी
    paid_up_capital_of_company = models.IntegerField(null=True) #कम्पनीको चुक्ता पुजी
    transaction_amount = models.IntegerField(null=True) # कारोबार रकम
    tax_amount = models.IntegerField(null=True) #कर रकम
    number_of_employees = models.IntegerField(null=True) #कामदार तथा कर्मचारि स.ख्या


    certificate_citizenship = models.ImageField(upload_to='user/documents', null=True) #नागरिकता पर्तिलिपि
    certificate_company_registration = models.ImageField(upload_to='user/documents', null=True) #कम्पनी दर्ताको प्रमाण पत्र पर्तिलिपि
    provisional_account_number = models.ImageField(upload_to='user/documents', null=True) #स्थायी लेखा नम्बरको पर्तिलिपि
    auditing = models.ImageField(upload_to='user/documents', null=True) #लेखा परिक्षण पर्तिवेदन्को पर्तिलिपि
    tax_paid_certificate = models.ImageField(upload_to='user/documents', null=True) # कर चुक्ता प्रमाण पत्रको पर्तिलिपि

    #for further application form detail
    industry_registration = models.ImageField(upload_to='user/documents', null=True) #उद्योग दर्ता
    income_certificate = models.ImageField(upload_to='user/documents', null=True) #आय प्रमाणपत्र 
    member_approved_certificate = models.ImageField(upload_to='user/documents', null=True) #सदस्य स्वीकृत प्रमाणपत्र
    self_declaration_not_on_the_black_list = models.ImageField(upload_to='user/documents', null=True) #कालो सुचीमा नपरेको स्वघोषणा
    bank_voucher = models.ImageField(upload_to='user/documents', null=True) #bank भौचर को प्रतिलिपि
    
    created_at = models.DateTimeField(auto_now_add=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)


class ApplicationForm(models.Model):

    get_user_application_detail = models.ForeignKey(UserApplicationDetail,related_name="applicationform",on_delete=models.CASCADE,null=True)
    user = models.ForeignKey(CustomUser,related_name="applicationform",on_delete=models.CASCADE,null=True)

    dsc = models.CharField(max_length=20,null=True) # d>district , s=state , c=central

    district_status = models.BooleanField(default=False) # True and False
    state_status = models.BooleanField(default=False)
    central_status = models.BooleanField(default=False)
    private_status = models.BooleanField(default=False)


    in_district_approved_by = models.ForeignKey(CustomUser,related_name='approved_form_in_district_level',on_delete=models.DO_NOTHING,null=True)
    in_state_approved_by = models.ForeignKey(CustomUser,related_name='approved_form_in_state_level',on_delete=models.DO_NOTHING,null=True)
    in_central_approved_by = models.ForeignKey(CustomUser,related_name='approved_form_in_central_level',on_delete=models.DO_NOTHING,null=True)

    approved_pending_cancelled = models.CharField(max_length=10,null=True) #a>approved , c>cancelled , p>pending

    created_at = models.DateTimeField(auto_now_add=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    def get_date(self):
        return humanize.naturaltime(self.updated_at)   

class UserApplicationPayment(models.Model):
    user = models.ForeignKey(CustomUser,related_name="payment",on_delete=models.DO_NOTHING,null=True)
    get_user_application_detail = models.ForeignKey(UserApplicationDetail,related_name="payment",on_delete=models.DO_NOTHING,null=True)
    user_application_form = models.ForeignKey(ApplicationForm,related_name="payment",on_delete=models.DO_NOTHING,null=True)

    mobile_number = models.CharField(max_length=205, null=True)
    email = models.CharField(max_length=205, null=True)

    owner_full_name = models.CharField(max_length=205,null=True)
    company_name = models.CharField(max_length=205,null=True)

    business_name = models.CharField(max_length=205, null=True)
    business_price_category = models.CharField(max_length=205, null=True)
    voucher_number = models.CharField(max_length=505, null=True)
    is_payment = models.BooleanField(default=False,null=True)
    is_renew = models.BooleanField(default=False,null=True)

    created_at = models.DateTimeField(auto_now_add=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)

class ApplicationFormApprovedDetail(models.Model):
    approved_form = models.ForeignKey(ApplicationForm,related_name="application_form_approved_detailed",on_delete=models.CASCADE,null=True)
    approved_by =  models.ForeignKey(CustomUser,related_name="total_application_form_approved",on_delete=models.CASCADE,null=True)
    whose_form = models.CharField(max_length=100,null=True)

class ApplicationFormCancelledDetail(models.Model):
    cancelled_form = models.ForeignKey(ApplicationForm,related_name="application_form_cancelled_detailed",on_delete=models.CASCADE,null=True)
    cancelled_by =  models.ForeignKey(CustomUser,related_name="total_application_form_cancelled",on_delete=models.CASCADE,null=True)
    whose_form = models.CharField(max_length=100,null=True)



class PageType(models.Model):
    page_name =  models.CharField(max_length=255)  
    status = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)

    def __str__(self):
        return "{page_name:"+self.page_name+","+"status:"+str(self.status)+"}"

class GlobalSettings(models.Model):
    site_name = models.CharField(max_length=255)
    site_name_nepali = models.CharField(max_length=255,null=True)
    site_email = models.EmailField()
    site_contact = models.BigIntegerField()
    site_contact_nepali = models.BigIntegerField(null=True)
    site_address = models.CharField(max_length=255)
    site_address_nepali = models.CharField(max_length=255,null=True)
    fb_link = models.CharField(max_length=255,null=True)
    twitter_link = models.CharField(max_length=255,null=True)
    linkedin_link = models.CharField(max_length=255,null=True)
    other_link = models.CharField(max_length=255,null=True)
    page_title = models.CharField(max_length=255)
    page_keyword = models.CharField(max_length=200,null=True)
    page_discription = models.TextField(max_length=5000,null=True)
    image1 = models.ImageField(upload_to='global/fav_ico', null=True)
    image2 = models.ImageField(upload_to='global/logo', null=True)
    image3 = models.ImageField(upload_to='global/footer_logo', null=True)
    created_at = models.DateTimeField(auto_now=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)

    def __str__(self):
        return "{name:"+self.name+","+"global_setting"+str(self.id)+"}"

class Team(models.Model):
    name = models.CharField(max_length=255)
    post = models.CharField(max_length=255)
    short_description = models.CharField(max_length=255, null=True)
    long_contents = models.TextField(max_length=255,null=True)
    profile_picture = models.ImageField(upload_to='founders/', null=True)

class Blog(models.Model):
    title = models.CharField(max_length=2000,null=True)
    created_at = models.DateTimeField(auto_now=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    discription = models.TextField(max_length=5000,null=True)
    author = models.CharField(max_length=255,null=True)
    banner_image = models.ImageField(upload_to='blogs/banner', null=True)
    icon_image = models.ImageField(upload_to='blogs/icon', null=True)
    status = models.BooleanField(default=True)

class ContactUs(models.Model):
    name = models.CharField(max_length=50, null=True)
    email = models.CharField(max_length=50, null=True)
    subject = models.CharField(max_length=100, null=True)
    message = models.TextField(null=True)
    read_unread = models.BooleanField(default=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)

    def get_date(self):
        return humanize.naturaltime(self.updated_at)

class States(models.Model):
    state_name = models.CharField(max_length=100, null=True,)
    state_code =  models.CharField(max_length=100, null=True, unique=True)

class Districts(models.Model):
    district_name = models.CharField(max_length=100, null=True)
    get_state = models.ForeignKey(States,related_name="get_districts",on_delete=models.CASCADE,null=True)

class BusinessType(models.Model):
    business_type = {
        'summ_industry':{'code_name':'summ_industry','name_1':'समिल उद्योग','name_2':'प्राथमिक वस्तु उत्पादक','name_3':'गोलिया काठ खरिद','vat':None},
        'plywood_industry':{'code_name':'plywood_industry','name_1':'प्लाईउड उद्योग','name_2':'प्राथमिक वस्तु उत्पादक','name_3':'गोलिया काठ खरिद','vat':None},
        'venier_industry':{'code_name':'venier_industry','name_1':'भेनियर उद्योग','name_2':'प्राथमिक वस्तु उत्पादक','name_3':'गोलिया काठ खरिद','vat':None},
        'furniture industry':{'code_name':'furniture_industry','name_1':'फर्निचर उद्योग','name_2':'समिल दर्ता नभएका पहाडि तथा हिमाली जिल्ला का लागि','vat':None},
        'chiran_wood_supply':{'code_name':'chiran_wood_supply','name_1':'चिरान काठ आपुर्ति कर्ता','name_2':'सप्लायर्स, महासंघको आन्तरिक प्रयोजनका लागी','vat':None},
    }

class RecomendationPriceCategory(models.Model):
    recommendation_fee = {
        'less_than_25_lakh':{'code_name':'less_than_25_lakh','name_1':'रु २५ लाख भन्दा कम','start_recommendation_fee':'10000','renewal_fee':'5000'},
        'greater_than_25_lakh_and_less_than_1_crode':{'code_name':'greater_than_25_lakh_and_less_than_1_crode','name_1':'रु २५ लाख भन्दा माथि १ करोड सम्म','start_recommendation_fee':'20000','renewal_fee':'10000'},
        'greater_than_1_crode_and_less_than_3_crode':{'code_name':'greater_than_1_crode_and_less_than_3_crode','name_1':'रु १ करोड भन्दा माथि ३ करोड सम्म','start_recommendation_fee':'30000','renewal_fee':'15000'},
        'greater_than_3_crode':{'code_name':'greater_than_3_crode','name_1':'रु ३ करोड माथि','start_recommendation_fee':'50000','renewal_fee':'25000'},
        'old_unregistered_non_payment':{'code_name':'old_unregistered_non_payment','name_1':'कारोबार रकम नख’ल्ने तथा महासंघमा दर्ता नभएका प’राना उद्योगका हकमा','start_recommendation_fee':'50000','renewal_fee':'5000','renewal_fee':None},
    }