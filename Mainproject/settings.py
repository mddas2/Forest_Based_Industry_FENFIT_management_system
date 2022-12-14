"""
Django settings for Mainproject project.

Generated by 'django-admin startproject' using Django 4.1.

For more information on this file, see
https://docs.djangoproject.com/en/4.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/4.1/ref/settings/
"""

from http import client
from pathlib import Path

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/4.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'django-insecure-8xa4j0^h82g!dd%*$@4psdh-4nf*+bi!4+!ekxcki_adahi!(k'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'axes', #django-axes is a very simple way for you to keep track of failed login attempts, both for the Django admin and for the rest of your site.  The name is sort of a geeky pun, since `axes` can be read interpretted as.
    'Admin', #app1
    'mathfilters',
    'rest_framework',
    'account',
    'nepallocation',
    'payment',
    'report',
]

AUTH_USER_MODEL = "account.CustomUser" 

AUTHENTICATION_BACKENDS = [
    # AxesStandaloneBackend should be the first backend in the AUTHENTICATION_BACKENDS list.
    'axes.backends.AxesStandaloneBackend',

    # Django ModelBackend is the default authentication backend.
    'django.contrib.auth.backends.ModelBackend',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    'axes.middleware.AxesMiddleware',
]

AXES_RESET_ON_SUCCESS = True #if user failed to login and one success to login then reset login failed attempt
AXES_FAILURE_LIMIT = 5    #5 time to login failed attempt
AXES_LOCK_OUT_AT_FAILURE = True #After the number of allowed login attempts are exceeded, should we lock out this IP (and optional user agent)?
AXES_COOLOFF_TIME = 1.0 #If set, defines a period of inactivity after which old failed login attempts will be cleared. Can be set to a Python timedelta object, an integer, a float, a callable, or a string path to a callable which takes no arguments. If an integer or float, will be interpreted as a number of hours: AXES_COOLOFF_TIME = 2 2 hours, AXES_COOLOFF_TIME = 2.0 2 hours, 120 minutes, AXES_COOLOFF_TIME = 1.7 1.7 hours, 102 minutes, 6120 seconds

ROOT_URLCONF = 'Mainproject.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
            'libraries': {
                'staticfiles': 'django.templatetags.static',
                'admin_custom_tag' : 'Admin.custom_tags.custom_tags',
            },
        },
    },
]

WSGI_APPLICATION = 'Mainproject.wsgi.application'


# Database
# https://docs.djangoproject.com/en/4.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'fenfit',
        'USER': 'root',
        'PASSWORD':'',
        'HOST':'localhost',
        'PORT': '3306',
        'OPTIONS': {  
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'"  
        }  
    }
}


# Password validation
# https://docs.djangoproject.com/en/4.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/4.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'Asia/Kathmandu'

USE_I18N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.1/howto/static-files/
LOGIN_URL='Login'

CLIENT_LOGIN_URL='user_login'

STATIC_URL = '/static/'
STATICFILES_DIRS = [
    BASE_DIR / "Admin/static",
]
# Base url to serve media files
MEDIA_URL = '/media/'
BASE_URL = "http://127.0.0.1:8000"

import os
# Path where media is stored
MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

# Default primary key field type
# https://docs.djangoproject.com/en/4.1/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

# EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
# EMAIL_HOST = 'smtp.gmail.com'
# EMAIL_USE_TLS = True
# EMAIL_PORT = 587
# EMAIL_HOST_USER = "mddasgudiya@gmail.com"#sender's email-id 
# EMAIL_HOST_PASSWORD = 'bvgpkvyhqzjrrlkv'#password associated with above email-id #this is for gmail setup

EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'mail.fenfitnepal.com'
EMAIL_USE_TLS = True
EMAIL_PORT = 587
EMAIL_HOST_USER = "fenfit@fenfitnepal.com"#sender's email-id  #this is for web email setup like fenfitnepal.com/webmail
EMAIL_HOST_PASSWORD = 'fenfit@devraj'#password associated with above email-id