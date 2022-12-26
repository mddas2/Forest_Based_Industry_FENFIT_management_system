# Generated by Django 4.1 on 2022-12-26 11:18

from django.conf import settings
import django.contrib.auth.models
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='CustomUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('first_name', models.CharField(blank=True, max_length=150, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('sex', models.CharField(max_length=255, null=True)),
                ('phone', models.CharField(max_length=255, null=True)),
                ('permanent_address', models.CharField(max_length=255, null=True)),
                ('email', models.EmailField(max_length=255, unique=True)),
                ('username', models.EmailField(max_length=255)),
                ('state_name', models.CharField(max_length=55, null=True)),
                ('district_name', models.CharField(max_length=55, null=True)),
                ('is_verified', models.BooleanField(default=False)),
                ('is_applyForVerified', models.BooleanField(default=False)),
                ('apply_role_type', models.IntegerField(null=True)),
                ('company_name', models.CharField(max_length=205, null=True)),
                ('union_type', models.CharField(max_length=205, null=True)),
                ('union_name', models.CharField(max_length=205, null=True)),
                ('approved_name', models.CharField(max_length=205, null=True)),
                ('approved_email', models.CharField(max_length=205, null=True)),
                ('approved_signature', models.ImageField(null=True, upload_to='user/documents')),
                ('approved_company_name', models.CharField(max_length=205, null=True)),
                ('image', models.ImageField(null=True, upload_to='user/profile')),
                ('signature', models.ImageField(null=True, upload_to='user/documents')),
                ('member_admin', models.CharField(max_length=205, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(auto_now=True, null=True)),
                ('division_forest_email', models.CharField(max_length=205, null=True)),
                ('role', models.PositiveSmallIntegerField(blank=True, choices=[(1, 'CENTRAL'), (2, 'STATE'), (3, 'DISTRICT'), (4, 'PRIVATE'), (5, 'USER')], null=True)),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
                'abstract': False,
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='TeamMember',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=2000, null=True)),
                ('post', models.CharField(max_length=2000, null=True)),
                ('email', models.CharField(max_length=2000, null=True)),
                ('phone', models.CharField(max_length=2000, null=True)),
                ('image', models.ImageField(null=True, upload_to='user/teams')),
                ('admin', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='teams', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
