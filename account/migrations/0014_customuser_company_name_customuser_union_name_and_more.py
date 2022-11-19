# Generated by Django 4.1 on 2022-11-19 07:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0013_customuser_signature'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='company_name',
            field=models.CharField(max_length=205, null=True),
        ),
        migrations.AddField(
            model_name='customuser',
            name='union_name',
            field=models.CharField(max_length=205, null=True),
        ),
        migrations.AddField(
            model_name='customuser',
            name='union_type',
            field=models.CharField(max_length=205, null=True),
        ),
        migrations.AlterField(
            model_name='customuser',
            name='created_at',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
    ]
