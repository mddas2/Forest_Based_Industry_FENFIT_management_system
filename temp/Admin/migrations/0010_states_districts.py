# Generated by Django 4.1 on 2022-11-05 08:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Admin', '0009_alter_applicationform_dsc'),
    ]

    operations = [
        migrations.CreateModel(
            name='States',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('state_name', models.CharField(max_length=100, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Districts',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('district_name', models.CharField(max_length=100, null=True)),
                ('get_state', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='get_districts', to='Admin.states')),
            ],
        ),
    ]