# Generated by Django 4.1 on 2022-11-03 05:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Admin', '0003_applicationform_central_status_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='applicationform',
            name='approved_pending_cancelled',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='applicationform',
            name='central_status',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='applicationform',
            name='district_status',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='applicationform',
            name='private_status',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='applicationform',
            name='state_status',
            field=models.BooleanField(default=False),
        ),
    ]
