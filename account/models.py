from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
    phone = models.CharField(max_length=255 , null=True)
    permanent_address = models.CharField(max_length=255 , null=True)
    email = models.EmailField(max_length=255, unique=True)
    username = models.EmailField(max_length=255, unique=False)
    image = models.ImageField(upload_to='user/profile', null=True)
    USERNAME_FIELD = 'email'
    Admin = 1
    User = 2
    
    ROLE_CHOICES = (
        (Admin, 'Admin'),
        (User, 'User'),
    )
    role = models.PositiveSmallIntegerField(choices=ROLE_CHOICES, blank=True, null=True)
    REQUIRED_FIELDS = []
    pass
    # add additional fields in here
    def getRoleName(self):
        if self.role==1:
            return 'Admin'
        elif self.role==2:
            return 'User'
        else:
            return 'md'
    def SetRoleToUserById(self,id):
        if self.Admin==id:
            self.role = self.Admin
            self.save()
            return True
        elif self.User==id:
            self.role = self.User
            self.save()
            return True
        else:
            return 'None'
    def getRoleById(self,id):
        if self.Admin==id:
            return 'Admin'
        elif self.User==id:
            return 'User'
        else:
            return 'None'
   
    def __str__(self):
        return self.email