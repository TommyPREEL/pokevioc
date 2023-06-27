from django import forms
from pokeviocApp.models import Contact

class ContactForm(forms.ModelForm):
    class Meta:
        model = Contact
        fields = ('name', 'email', 'object', 'content')