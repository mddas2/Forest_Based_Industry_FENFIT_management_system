# Generated by Django 4.1 on 2022-11-29 20:36

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('Admin', '0022_alter_applicationform_bill_number'),
    ]

    operations = [
        migrations.AddField(
            model_name='applicationform',
            name='payment_get',
            field=models.CharField(default='', max_length=205),
        ),
        migrations.AddField(
            model_name='userapplicationdetail',
            name='application_certificate',
            field=models.FileField(null=True, upload_to='user/documents'),
        ),
        migrations.AddField(
            model_name='userapplicationdetail',
            name='industry_certificate',
            field=models.ImageField(null=True, upload_to='user/documents'),
        ),
        migrations.AddField(
            model_name='userapplicationpayment',
            name='payment_get',
            field=models.CharField(default='', max_length=205),
        ),
        migrations.AlterField(
            model_name='userapplicationpayment',
            name='user',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='payment', to=settings.AUTH_USER_MODEL),
        ),
    ]
