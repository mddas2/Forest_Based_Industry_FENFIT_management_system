# Generated by Django 4.1 on 2022-11-03 05:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Admin', '0002_alter_userapplicationdetail_tole'),
    ]

    operations = [
        migrations.AddField(
            model_name='applicationform',
            name='central_status',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AddField(
            model_name='applicationform',
            name='district_status',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AddField(
            model_name='applicationform',
            name='private_status',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AddField(
            model_name='applicationform',
            name='state_status',
            field=models.CharField(max_length=10, null=True),
        ),
    ]