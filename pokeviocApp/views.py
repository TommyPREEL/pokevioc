from django.shortcuts import render, redirect
from pokeviocApp.forms import ContactForm
from pokeviocApp.models import Contact, Service
from django.core.mail import send_mail
import os
from django.conf import settings

# Create your views here.

# Function to render the home page
def about(request):
    active_page = 'about'
    services = Service.objects.all().order_by('-title')
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            send_mail(
                form.cleaned_data['object'],
                form.cleaned_data['content'],
                form.cleaned_data['email'],
                [os.environ.get('ADMIN_EMAIL')],
                fail_silently=False,
            )
            form.save()
            return redirect('pokeviocApp:about')
    else:
        form = ContactForm()
        return render(request, 'pokeviocApp/about.html', {'services': services,'form': form, 'active_page': active_page})

def center(request):
    active_page = 'center'
    return render(request, 'pokeviocApp/center.html', {'active_page': active_page})

# Function to render the contact page
def contact(request):
    active_page = 'contact'
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            settings.DEFAULT_FROM_EMAIL = form.cleaned_data['email']
            send_mail(
                form.cleaned_data['object'],
                form.cleaned_data['content'],
                settings.DEFAULT_FROM_EMAIL,
                [settings.EMAIL_HOST_USER],
                fail_silently=False
            )
            form.save()
            return redirect('pokeviocApp:services_list')
    else:
        form = ContactForm()
        return render(request, 'pokeviocApp/contact.html', {'form': form, 'active_page': active_page})

def services_list(request):
    active_page = 'services'
    services = Service.objects.all().order_by('-title')
    return render(request, 'pokeviocApp/services_list.html', {'services': services, 'active_page': active_page})