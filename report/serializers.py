from dataclasses import field
from rest_framework import serializers
from Admin.models import *

class ApplicationSerializer(serializers.ModelSerializer):
    class Meta:
        model = ApplicationForm
        fields = '__all__'

# class UserApplicationSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = UserApplicationDetail
#         fields = '__all__'

# class CustomSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = CustomUser
#         fields = '__all__'

# class ProductsSerializer(serializers.ModelSerializer):
#     # applicationform = ApplicationSerializer(many=True, read_only=True, source='applicationdetail')
#     userapplicationdetail = UserApplicationSerializer(many=True, read_only=True)
#     customuser = CustomSerializer(many=True, read_only=True)

#     class Meta:
#         model = ApplicationForm
#         fields = ['get_user_application_detail','user','dsc','userapplicationdetail','customuser']