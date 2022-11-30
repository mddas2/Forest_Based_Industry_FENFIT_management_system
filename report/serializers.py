from dataclasses import field
from rest_framework import serializers
from Admin.models  import ApplicationForm,UserApplicationDetail,UserApplicationPayment
from account.models import CustomUser


class CustomUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = '__all__'

class ApplicationFormSerializer(serializers.ModelSerializer):
    user = CustomUserSerializer(read_only=True)
    class Meta:
        model = ApplicationForm
        fields = '__all__'

