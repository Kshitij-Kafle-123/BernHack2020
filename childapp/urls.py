from django.urls import path
from .views import *
app_name='childapp'

urlpatterns=[
path('',HomeView.as_view(),name='homeview'),
]