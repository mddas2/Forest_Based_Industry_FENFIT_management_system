# Generated by Django 4.1 on 2022-11-16 09:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('nepallocation', '0002_municipality_state_alter_districts_district_id_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='municipality',
            name='alt_name',
            field=models.CharField(max_length=255, null=True),
        ),
    ]