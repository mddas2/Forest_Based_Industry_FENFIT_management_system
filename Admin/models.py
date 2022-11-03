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
    user_id = models.CharField(max_length=100)
    owner_full_name = models.CharField(max_length=205)
    business_name = models.CharField(max_length=205, null=True)
    municipality = models.CharField(max_length=205,null=True)
    ward_number = models.CharField(max_length=205 , null=True)
    tole = models.CharField(max_length=205, default=True)

    phone = models.CharField(max_length=205)
    email = models.CharField(max_length=205)
    district = models.CharField(max_length=300,null=True)
    state = models.CharField(max_length=300,null=True)

    certificate_citizenship = models.ImageField(upload_to='user/documents', null=True) #नागरिकता पर्तिलिपि
    certificate_company_registration = models.ImageField(upload_to='user/documents', null=True) #कम्पनी दर्ताको प्रमाण पत्र पर्तिलिपि
    provisional_account_number = models.ImageField(upload_to='user/documents', null=True) #अस्थायी लेखा नम्बरको पर्तिलिपि
    auditing = models.ImageField(upload_to='user/documents', null=True) #लेखा परिक्षण पर्तिवेदन्को पर्तिलिपि
    tax_paid_certificate = models.ImageField(upload_to='user/documents', null=True) # कर चुक्ता प्रमाण पत्रको पर्तिलिपि

class ApplicationForm(models.Model):
    # product_id = models.IntegerField(default=0)
    get_user_application_detail = models.ForeignKey(UserApplicationDetail,related_name="applicationform",on_delete=models.CASCADE,null=True)
    user = models.ForeignKey(CustomUser,related_name="applicationform",on_delete=models.CASCADE,null=True)
    dsc = models.CharField(max_length=10,null=True) # d>district , s=state , c=central

    district_status = models.BooleanField(default=False) # True and False
    state_status = models.BooleanField(default=False)
    central_status = models.BooleanField(default=False)
    private_status = models.BooleanField(default=False)

    approved_pending_cancelled = models.CharField(max_length=10,null=True) #a>approved , c>cancelled , p>pending

    created_at = models.DateTimeField(auto_now=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    def get_date(self):
        return humanize.naturaltime(self.updated_at)    

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

