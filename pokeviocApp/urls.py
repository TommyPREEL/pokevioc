from django.urls import path
from . import views

urlpatterns =[ 
    path('', views.about, name='about'),
    path('contact', views.contact, name='contact'),
    path('services/list', views.services_list, name='services_list'),
    path('center', views.center, name='center'),
    ]