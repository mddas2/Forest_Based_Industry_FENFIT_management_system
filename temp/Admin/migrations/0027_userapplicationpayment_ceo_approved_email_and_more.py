# Generated by Django 4.1 on 2022-12-06 07:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Admin', '0026_rename_industry_certificate_userapplicationdetail_industry_certificate_back_side_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='userapplicationpayment',
            name='ceo_approved_email',
            field=models.CharField(max_length=205, null=True),
        ),
        migrations.AddField(
            model_name='userapplicationpayment',
            name='ceo_approved_name',
            field=models.CharField(max_length=205, null=True),
        ),
        migrations.AddField(
            model_name='userapplicationpayment',
            name='ceo_approved_signature',
            field=models.ImageField(null=True, upload_to='user/documents'),
        ),
    ]
