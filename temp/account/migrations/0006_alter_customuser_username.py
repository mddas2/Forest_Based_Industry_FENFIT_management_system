# Generated by Django 4.1 on 2022-10-21 06:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0005_customuser_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customuser',
            name='username',
            field=models.EmailField(max_length=255),
        ),
    ]