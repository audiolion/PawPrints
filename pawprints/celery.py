"""
Defines Celery settings.
"""

from __future__ import absolute_import, unicode_literals
import os
from celery import Celery
import django

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'pawprints.settings')
django.setup()
app = Celery('pawprints')

app.config_from_object('django.conf:settings', namespace='CELERY')

app.autodiscover_tasks()

@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))
