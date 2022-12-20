from dataclasses import field
from rest_framework import serializers
from Admin.models  import ApplicationForm,UserApplicationDetail,UserApplicationPayment
from account.models import CustomUser


class CustomUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomUser
        fields = '__all__'

class UserApplicationDetail(serializers.ModelSerializer):
    class Meta:
        model = UserApplicationDetail
        fields = '__all__'

class ApplicationFormSerializer(serializers.ModelSerializer):
    user = CustomUserSerializer(read_only=True)
    get_user_application_detail = UserApplicationDetail(read_only=True)
    class Meta:
        model = ApplicationForm
        fields = '__all__'

