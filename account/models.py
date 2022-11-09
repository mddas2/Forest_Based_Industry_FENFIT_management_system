from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    phone = models.CharField(max_length=255 , null=True)
    permanent_address = models.CharField(max_length=255 , null=True)
    email = models.EmailField(max_length=255, unique=True)
    username = models.EmailField(max_length=255, unique=False)
    state_name = models.CharField(max_length=55 , null=True)
    district_name = models.CharField(max_length=55 , null=True)

    is_verified = models.BooleanField(default=False)
    is_applyForVerified = models.BooleanField(default=False)

    image = models.ImageField(upload_to='user/profile', null=True)
    created_at = models.DateTimeField(auto_now=True,null=True)
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
    states_district_dictionary_list = {
        'province_1' : ['bhojpur','dhankuta','ilam','jhapa','khotang','morang','okhaldhunga','panchthar','sankhuwasabha','solukhumbu','sunsari','taplejung','terhathum','udayapur'],
        'province_2' : ['saptari','siraha','dhanusa','mahottari','sarlahi','bara','parsa','rautahat'],
        'province_3' : ['sindhuli','ramechhap','dolakha','bhaktapur','dhading','kathmandu','kavrepalanchok','lalitpur','nuwakot','rasuwa','sindhupalchok','chitwan','makwanpur'],
        'province_4' : ['gorkha','kaski','lamjung','syangja','tanahu','manang','baglung','myagdi','parbat','mustang'],
        'province_5' : ['kapilvastu','parasi','rupandehi','arghakhanchi','gulmi','palpa','dang','pyuthan','rolpa','eastern rukum','banke','bardiya'],
        'province_6' : ['western rukum','salyan','dolpa','humla','jumla','kalikot','mugu','surkhet','dailekh','jajarkot'],
        'province_7' : ['Kailali','achham','doti','bajhang','bajura','kanchanpur','dadeldhura','baitadi','darchula']
    }
    districts = sorted(['Kailali','achham','doti','bajhang','bajura','kanchanpur','dadeldhura','baitadi','darchula','western rukum','salyan','dolpa','humla','jumla','kalikot','mugu','surkhet','dailekh','jajarkot','kapilvastu','parasi','rupandehi','arghakhanchi','gulmi','palpa','dang','pyuthan','rolpa','eastern rukum','banke','bardiya','gorkha','kaski','lamjung','syangja','tanahu','manang','baglung','myagdi','parbat','mustang','bhojpur','dhankuta','ilam','jhapa','khotang','morang','okhaldhunga','panchthar','sankhuwasabha','solukhumbu','sunsari','taplejung','terhathum','udayapur','saptari','siraha','dhanusa','mahottari','sarlahi','bara','parsa','rautahat','sindhuli','ramechhap','dolakha','bhaktapur','dhading','kathmandu','kavrepalanchok','lalitpur','nuwakot','rasuwa','sindhupalchok','chitwan','makwanpur'])
    # states = (
    #     ('province_1','Province 1'),
    #     ('province_2','Madhesh Pradesh'),
    #     ('province_3','Bagmati Pradesh'),
    #     ('province_4','Gandaki Pradesh'),
    #     ('province_5','Lumbini Pradesh'),
    #     ('province_6','Karnali Pradesh'),
    #     ('province_7','Sudur Paschim Pradesh'),
    # )
    # province_1 = (
    #     ('bhojpur','Bhojpur'),
    #     ('dhankuta','Dhankuta'),
    #     ('ilam','Ilam'),
    #     ('jhapa','jhapa'),
    #     ('khotang','Khotang'),
    #     ('morang','Morang'),
    #     ('okhaldhunga','Okhaldhunga'),
    #     ('panchthar','Panchthar'),
    #     ('sankhuwasabha','Sankhuwasabha'),
    #     ('solukhumbu','Solukhumbu'),
    #     ('sunsari','Sunsari'),
    #     ('taplejung','Taplejung'),
    #     ('terhathum','Terhathum'),
    #     ('udayapur','Udayapur'),
    # )

    # province_2 = (
    #     ('saptari','Saptari'),
    #     ('siraha','Siraha'),
    #     ('dhanusa','Dhanusa'),
    #     ('mahottari','Mahottari'),
    #     ('sarlahi','sarlahi'),
    #     ('bara','Bara'),
    #     ('parsa','Parsa'),
    #     ('rautahat','Rautahat'),
    # )

    # province_3 = (
    #     ('sindhuli','Sindhuli'),
    #     ('ramechhap','Ramechhap'),
    #     ('dolakha','Dolakha'),
    #     ('bhaktapur','Bhaktapur'),
    #     ('dhading','Dhading'),
    #     ('kathmandu ','Kathmandu'),
    #     ('kavrepalanchok','Kavrepalanchok'),
    #     ('lalitpur','Lalitpur'),
    #     ('nuwakot ','Nuwakot '),
    #     ('rasuwa','Rasuwa'),
    #     ('sindhupalchok','Sindhupalchok'),
    #     ('chitwan','Chitwan'),
    #     ('makwanpur','Makwanpur'),
    # )

    # province_4 = (
    #     ('gorkha','Gorkha'),
    #     ('kaski','Kaski'),
    #     ('lamjung','Lamjung'),
    #     ('syangja','Syangja'),
    #     ('tanahu','Tanahu'),
    #     ('manang','Manang'),
    #     ('baglung','Baglung'),
    #     ('myagdi','Myagdi'),
    #     ('parbat','Parbat'),
    #     ('mustang','Mustang'),
    # )

    # province_5 = (
    #     ('kapilvastu','Kapilvastu'),
    #     ('parasi','Parasi'),
    #     ('rupandehi','Rupandehi'),
    #     ('arghakhanchi','Arghakhanchi'),
    #     ('gulmi','Gulmi'),
    #     ('palpa','Palpa'),
    #     ('dang','Dang'),
    #     ('pyuthan','Pyuthan'),
    #     ('rolpa','Rolpa'),
    #     ('eastern rukum','Eastern Rukum'),
    #     ('banke','Banke'),
    #     ('bardiya','Bardiya'),
    # )

    # province_6 = (
    #     ('western rukum','Western Rukum'),
    #     ('salyan','Salyan'),
    #     ('dolpa','Dolpa'),
    #     ('humla','Humla'),
    #     ('jumla','Jumla'),
    #     ('kalikot','Kalikot'),
    #     ('mugu','Mugu'),
    #     ('surkhet','Surkhet'),
    #     ('dailekh','Dailekh'),
    #     ('jajarkot','Jajarkot'),
    # )

    # province_7 = (
    #     ('kailali','Kailali'),
    #     ('achham','Achham'),
    #     ('doti','Doti'),
    #     ('bajhang','Bajhang'),
    #     ('bajura','Bajura'),
    #     ('kanchanpur','Kanchanpur'),
    #     ('dadeldhura ','Dadeldhura'),
    #     ('baitadi','Baitadi'),
    #     ('darchula','Darchula'),
    # )

    # states_district_dictionary_tuples = {
    #     'province_1' : ( ('bhojpur','Bhojpur'), ('dhankuta','Dhankuta'), ('ilam','Ilam'), ('jhapa','jhapa'), ('khotang','Khotang'), ('morang','Morang'), ('okhaldhunga','Okhaldhunga'),('panchthar','Panchthar'),('sankhuwasabha','Sankhuwasabha'),('solukhumbu','Solukhumbu'),('sunsari','Sunsari'),('taplejung','Taplejung'),('terhathum','Terhathum'),('udayapur','Udayapur')),
    #     'province_2' : ( ('saptari','Saptari'), ('siraha','Siraha'),('dhanusa','Dhanusa'),('mahottari','Mahottari'),('sarlahi','sarlahi'),('bara','Bara'),('parsa','Parsa'),('rautahat','Rautahat')),
    #     'province_3' : ( ('sindhuli','Sindhuli'),('ramechhap','Ramechhap'), ('dolakha','Dolakha'), ('bhaktapur','Bhaktapur'), ('dhading','Dhading'),('kathmandu ','Kathmandu'), ('kavrepalanchok','Kavrepalanchok'),('lalitpur','Lalitpur'),('nuwakot ','Nuwakot '),('rasuwa','Rasuwa'),('sindhupalchok','Sindhupalchok'),('chitwan','Chitwan'),('makwanpur','Makwanpur')),
    #     'province_4' : ( ('gorkha','Gorkha'),('kaski','Kaski'),('lamjung','Lamjung'),('syangja','Syangja'),('tanahu','Tanahu'),('manang','Manang'),('baglung','Baglung'),('myagdi','Myagdi'),('parbat','Parbat'),('mustang','Mustang')),
    #     'province_5' :  ( ('kapilvastu','Kapilvastu'),('parasi','Parasi'),('rupandehi','Rupandehi'),('arghakhanchi','Arghakhanchi'),('gulmi','Gulmi'),('palpa','Palpa'),('dang','Dang'),('pyuthan','Pyuthan'),('rolpa','Rolpa'),('eastern rukum','Eastern Rukum'),('banke','Banke'),('bardiya','Bardiya')),
    #     'province_6' : (('western rukum','Western Rukum'),('salyan','Salyan'),('dolpa','Dolpa'),('humla','Humla'),('jumla','Jumla'),('kalikot','Kalikot'),('mugu','Mugu'),('surkhet','Surkhet'),('dailekh','Dailekh'),('jajarkot','Jajarkot')),
    #     'province_7' :  (('kailali','Kailali'),('achham','Achham'),('doti','Doti'),('bajhang','Bajhang'),('bajura','Bajura'),('kanchanpur','Kanchanpur'),('dadeldhura ','Dadeldhura'),('baitadi','Baitadi'),('darchula','Darchula'))
    #     }
    def find_states(d, value):
        for k,v in d.items():
            #print(k)
            if isinstance(v, list):
                if value in v:
                    return k
                else:
                    pass
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
    def get_dsc_Role(self):
        if self.role==1:
            return 'c'
        elif self.role==2:
            return 's'
        elif self.role==3:
            return 'd'
        elif self.role==4:
            return 'p'
        elif self.role==5:
            return 'u'
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
   
    def __str__(self):
        return self.email
    
