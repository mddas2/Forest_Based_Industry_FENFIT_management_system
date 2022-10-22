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
    USER = 4
    
    ROLE_CHOICES = (
        (CENTRAL, 'CENTRAL'),
        (STATE, 'STATE'),
        (DISTRICT, 'DISTRICT'),
        (USER, 'USER'),

    )
    role = models.PositiveSmallIntegerField(choices=ROLE_CHOICES, blank=True, null=True)
    REQUIRED_FIELDS = []
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
            return 'USER'
        else:
            return 'None'

    def getRoleById(self,id):
        if self.CENTRAL==id:
            return 'CENTRAL'
        elif self.STATE==id:
            return 'STATE'
        elif self.DISTRICT==id:
            return 'DISTRICT'
        elif self.USER==id:
            return 'USER'
        else:
            return 'None'
   
    def __str__(self):
        return self.email