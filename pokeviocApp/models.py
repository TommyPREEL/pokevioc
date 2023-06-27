from django.db import models

class Contact(models.Model):
    id_contact = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    object = models.CharField(max_length=255)
    content = models.TextField()
    date_creation = models.DateTimeField(auto_now_add=True)

class Service(models.Model):
    id_service = models.AutoField(primary_key=True)
    title = models.CharField(max_length=255)
    content = models.TextField()
    price = models.IntegerField(max_length=255)
    