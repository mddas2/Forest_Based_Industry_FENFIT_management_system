# Generated by Django 4.1 on 2022-11-30 06:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Admin', '0023_applicationform_payment_get_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='applicationform',
            name='type_application_id',
            field=models.CharField(default='', max_length=205),
        ),
    ]
