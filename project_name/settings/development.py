# -*- coding: utf-8 -*-

import os
from .base import *



BASE_DIR = os.path.dirname(os.path.dirname(__file__))

DEBUG = True


SECRET_KEY = '{{ secret_key }}'

# Database
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'database.db'),
    }
}