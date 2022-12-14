# Generated by Django 4.1 on 2022-11-25 06:47

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0016_teammember'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='member_admin',
            field=models.CharField(max_length=205, null=True),
        ),
        migrations.AlterField(
            model_name='teammember',
            name='admin',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='teams', to=settings.AUTH_USER_MODEL),
        ),
    ]
