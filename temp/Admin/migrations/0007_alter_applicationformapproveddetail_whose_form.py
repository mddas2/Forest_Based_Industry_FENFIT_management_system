# Generated by Django 4.1 on 2022-11-04 05:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Admin', '0006_applicationform_in_central_approved_by_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='applicationformapproveddetail',
            name='whose_form',
            field=models.CharField(max_length=100, null=True),
        ),
    ]