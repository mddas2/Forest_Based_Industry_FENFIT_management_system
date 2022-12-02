from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    sex = models.CharField(max_length=255 , null=True) #male and female
    
    phone = models.CharField(max_length=255 , null=True)
    permanent_address = models.CharField(max_length=255 , null=True)
    email = models.EmailField(max_length=255, unique=True)
    username = models.EmailField(max_length=255, unique=False)
    state_name = models.CharField(max_length=55 , null=True)
    district_name = models.CharField(max_length=55 , null=True)

    is_verified = models.BooleanField(default=False)
    is_applyForVerified = models.BooleanField(default=False)

    apply_role_type = models.IntegerField(null=True)

    company_name = models.CharField(max_length=205,null=True)
    union_type = models.CharField(max_length=205,null=True)
    union_name = models.CharField(max_length=205,null=True)

    approved_name = models.CharField(max_length=205,null=True)
    approved_email = models.CharField(max_length=205,null=True)
    approved_signature = models.ImageField(upload_to='user/documents', null=True)
    approved_company_name =models.CharField(max_length=205,null=True)

    image = models.ImageField(upload_to='user/profile', null=True)
    signature = models.ImageField(upload_to='user/documents', null=True) #Signature
    
    member_admin =  models.CharField(max_length=205,null=True)#सदस्य/संस्थागत*

    created_at = models.DateTimeField(auto_now_add=True,null=True)
    updated_at = models.DateTimeField(auto_now=True,null=True)
    USERNAME_FIELD = 'email'

    CENTRAL = 1
    STATE = 2
    DISTRICT = 3
    PRIVATE = 4
    USER = 5
    
    ROLE_CHOICES = (
        (CENTRAL, 'CENTRAL'),
        (STATE, 'STATE'),
        (DISTRICT, 'DISTRICT'),
        (PRIVATE, 'PRIVATE'),
        (USER, 'USER'),

    )
    role = models.PositiveSmallIntegerField(choices=ROLE_CHOICES, blank=True, null=True)
    REQUIRED_FIELDS = []
    # states_district_dictionary_list = {
    #     'province_1' : ['bhojpur','dhankuta','ilam','jhapa','khotang','morang','okhaldhunga','panchthar','sankhuwasabha','solukhumbu','sunsari','taplejung','terhathum','udayapur'],
    #     'province_2' : ['saptari','siraha','dhanusa','mahottari','sarlahi','bara','parsa','rautahat'],
    #     'province_3' : ['sindhuli','ramechhap','dolakha','bhaktapur','dhading','kathmandu','kavrepalanchok','lalitpur','nuwakot','rasuwa','sindhupalchok','chitwan','makwanpur'],
    #     'province_4' : ['gorkha','kaski','lamjung','syangja','tanahu','manang','baglung','myagdi','parbat','mustang'],
    #     'province_5' : ['kapilvastu','parasi','rupandehi','arghakhanchi','gulmi','palpa','dang','pyuthan','rolpa','eastern rukum','banke','bardiya'],
    #     'province_6' : ['western rukum','salyan','dolpa','humla','jumla','kalikot','mugu','surkhet','dailekh','jajarkot'],
    #     'province_7' : ['Kailali','achham','doti','bajhang','bajura','kanchanpur','dadeldhura','baitadi','darchula']
    # }
    # districts = sorted(['Kailali','achham','doti','bajhang','bajura','kanchanpur','dadeldhura','baitadi','darchula','western rukum','salyan','dolpa','humla','jumla','kalikot','mugu','surkhet','dailekh','jajarkot','kapilvastu','parasi','rupandehi','arghakhanchi','gulmi','palpa','dang','pyuthan','rolpa','eastern rukum','banke','bardiya','gorkha','kaski','lamjung','syangja','tanahu','manang','baglung','myagdi','parbat','mustang','bhojpur','dhankuta','ilam','jhapa','khotang','morang','okhaldhunga','panchthar','sankhuwasabha','solukhumbu','sunsari','taplejung','terhathum','udayapur','saptari','siraha','dhanusa','mahottari','sarlahi','bara','parsa','rautahat','sindhuli','ramechhap','dolakha','bhaktapur','dhading','kathmandu','kavrepalanchok','lalitpur','nuwakot','rasuwa','sindhupalchok','chitwan','makwanpur'])

    # def find_states(d, value):
    #     for k,v in d.items():
    #         #print(k)
    #         if isinstance(v, list):
    #             if value in v:
    #                 return k
    #             else:
    #                 pass
    # add additional fields in here
    def getRoleName(self):
        if self.role==1:
            return 'CENTRAL'
        elif self.role==2:
            return 'STATE'
        elif self.role==3:
            return 'DISTRICT'
        elif self.role==4:
            return 'PRIVATE'
        elif self.role==5:
            return 'USER'
        else:
            return 'None'
    def getRoleNameInNepali(self):
        if self.role==1:
            try:
                permission_name = str(self.groups.all().first())
            except:
                permission_name = 'none'
            if permission_name == 'ceo':
                permission = ' मुख्य व्यवस्थापक'
            elif permission_name == 'admin':
                permission = ' व्यवस्थापक'
            elif permission_name == 'accountant':
               permission = ' लेखापाल'
            else:
                permission = ''
            return 'महासंघ ' + permission

        elif self.role==2:
            state = self.state_name
            return 'प्रदेश महासंघ'+'-' + str(state)
        elif self.role==3:
            district = self.district_name
            return str(district)+' जिल्ला संघ'
        elif self.role==4:
            company_name = self.company_name
            return str(company_name) + 'वस्तुगत संघ'
        else:
            return 'None'
    def get_dsc_Role(self):
        if self.role==1:
            try:
                permission_name = str(self.groups.all().first())
            except:
                permission_name = 'none'
            if permission_name == 'ceo':
                return 'central_ceo'
            elif permission_name == 'admin':
                return 'central_admin'
            elif permission_name == 'accountant':
                return 'central_accountant'
            else:
                return 'none'
            
        elif self.role==2:
            return 'state'
        elif self.role==3:
            return 'district'
        elif self.role==4:
            return 'private'
        elif self.role==5:
            return 'user'
        else:
            return 'None'

    def getRoleById(self,id):
        if self.CENTRAL==id:
            return 'CENTRAL'
        elif self.STATE==id:
            return 'STATE'
        elif self.DISTRICT==id:
            return 'DISTRICT'
        elif self.PRIVATE==id:
            return 'PRIVATE'
        elif self.USER==id:
            return 'USER'
        else:
            return 'None'

    def isAdmin(self):
        if self.role==1:
            return True
        elif self.role==2:
            return True
        elif self.role==3:
            return True
        elif self.role==4:
            return True
        else:
            return False

   
    def __str__(self):
        return self.email

class TeamMember(models.Model):
    admin = models.ForeignKey(CustomUser,related_name="teams",on_delete=models.CASCADE,null=True)
    name = models.CharField(max_length=2000,null=True)
    post = models.CharField(max_length=2000,null=True)
    email = models.CharField(max_length=2000,null=True)
    phone = models.CharField(max_length=2000,null=True)
    image = models.ImageField(upload_to='user/teams', null=True)
    
