# Generated by Django 4.1 on 2022-11-30 07:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0018_customuser_apply_role_type'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='sex',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
