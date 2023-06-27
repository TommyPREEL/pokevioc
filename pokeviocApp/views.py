from django.shortcuts import render, redirect
from pokeviocApp.forms import ContactForm
from pokeviocApp.models import Contact, Service
from django.core.mail import send_mail
import os
# from dotenv import load_dotenv

# load_dotenv()

# Create your views here.

# Function to render the home page
def about(request):
    active_page = 'about'
    return render(request, 'pokeviocApp/about.html', {'active_page': active_page})

# Function to render the contact page
def contact(request):
    active_page = 'contact'
    test = os.environ.get('ADMIN_EMAIL')
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            send_mail(
                form.Meta.model.object,
                form.Meta.model.content,
                form.Meta.model.email,
                [os.environ.get('ADMIN_EMAIL')],
                fail_silently=False,
            )
            # send_mail(
            #     'Sujet de l\'e-mail',
            #     'Contenu de l\'e-mail.',
            #     'from@example.com',
            #     ['tommy.preel.dev@gmail.com'],
            #     fail_silently=False,
            # )
            # **********
            # Ajouter l'envoi de mail ici VERS L'ADMIN DU SITE (et pas du user)
            # Ou alors envoyer au user le fait que sa demande a été reçue
            # **********
            return redirect('pokeviocApp:services_list')
    else:
        form = ContactForm()
        return render(request, 'pokeviocApp/contact.html', {'form': form, 'active_page': active_page, 'test': test})

def services_list(request):
    active_page = 'services'
    services = Service.objects.all().order_by('-title')
    return render(request, 'pokeviocApp/services_list.html', {'services': services, 'active_page': active_page})