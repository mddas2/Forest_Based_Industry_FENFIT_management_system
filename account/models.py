from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    phone = models.CharField(max_length=255 , null=True)
    permanent_address = models.CharField(max_length=255 , null=True)
    email = models.EmailField(max_length=255, unique=True)
    username = models.EmailField(max_length=255, unique=False)
    image = models.ImageField(upload_to='user/profile', null=True)
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
    states = (
        ('province_1','Province 1'),
        ('province_2','Madhesh Pradesh'),
        ('province_3','Bagmati Pradesh'),
        ('province_4','Gandaki Pradesh'),
        ('province_5','Lumbini Pradesh'),
        ('province_6','Karnali Pradesh'),
        ('province_7','Sudur Paschim Pradesh'),
    )
    province_1 = (
        ('bhojpur','Bhojpur'),
        ('dhankuta','Dhankuta'),
        ('ilam','Ilam'),
        ('jhapa','jhapa'),
        ('khotang','Khotang'),
        ('morang','Morang'),
        ('okhaldhunga','Okhaldhunga'),
        ('panchthar','Panchthar'),
        ('sankhuwasabha','Sankhuwasabha'),
        ('solukhumbu','Solukhumbu'),
        ('sunsari','Sunsari'),
        ('taplejung','Taplejung'),
        ('terhathum','Terhathum'),
        ('udayapur','Udayapur'),
    )

    province_2 = (
        ('saptari','Saptari'),
        ('siraha','Siraha'),
        ('dhanusa','Dhanusa'),
        ('mahottari','Mahottari'),
        ('sarlahi','sarlahi'),
        ('bara','Bara'),
        ('parsa','Parsa'),
        ('rautahat','Rautahat'),
    )

    province_3 = (
        ('sindhuli','Sindhuli'),
        ('ramechhap','Ramechhap'),
        ('dolakha','Dolakha'),
        ('bhaktapur','Bhaktapur'),
        ('dhading','Dhading'),
        ('kathmandu ','Kathmandu'),
        ('kavrepalanchok','Kavrepalanchok'),
        ('lalitpur','Lalitpur'),
        ('nuwakot ','Nuwakot '),
        ('rasuwa','Rasuwa'),
        ('sindhupalchok','Sindhupalchok'),
        ('chitwan','Chitwan'),
        ('makwanpur','Makwanpur'),
    )

    province_4 = (
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
    )

    province_5 = (
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
    )

    province_6 = (
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
    )

    province_7 = (
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
        ('sindhuli','Sindhuli'),
    )

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
    
