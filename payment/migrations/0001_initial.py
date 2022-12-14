# Generated by Django 4.1 on 2022-11-18 08:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Districts',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('district_id', models.IntegerField(null=True)),
                ('name', models.CharField(max_length=255)),
                ('alt_name', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='States',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('province_id', models.IntegerField(null=True)),
                ('name', models.CharField(max_length=255)),
                ('alt_name', models.CharField(max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='Municipality',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('municipality_id', models.IntegerField(null=True)),
                ('name', models.CharField(max_length=255)),
                ('alt_name', models.CharField(max_length=255, null=True)),
                ('district', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='municipalities', to='payment.districts')),
                ('state', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='municipalities', to='payment.states')),
            ],
        ),
        migrations.AddField(
            model_name='districts',
            name='state',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='districts', to='payment.states'),
        ),
    ]
