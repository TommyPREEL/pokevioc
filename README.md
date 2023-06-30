# INSTALLATION
## PRÉREQUIS
### Déjà installé :
- Python
- Un serveur web local avec MySQL
### 1 - Créez un dossier et ouvrez-le dans votre IDE (par exemple, VS Code).
### 2 - Ouvrez un terminal et clonez le projet.
```
git clone https://github.com/TommyPREEL/pokevioc.git
```
### 3 - Accédez au dossier contenant le fichier requirements.txt, manage.py, etc.
```
cd pokevioc
```
### 4 - Installez les dépendances.
```
pip install -r requirements.txt
```
### 5 - Créez une base de données dans votre serveur web nommée "pokevioc".

### 6 - Générez une clé secrète pour l'application.
### Saisissez dans un terminal
```
python manage.py shell
```
### Cela ouvrira une console Python
### Ensuite, tapez ces commandes :
```
from django.core.management.utils import get_random_secret_key
print(get_random_secret_key())
```
### La clé générée est la nouvelle clé secrète pour l'application

### 7 - Créez un fichier nommé ".env" dans le même répertoire que manage.py, requirements.txt, README.md, etc. Ensuite, configurez le fichier ".env" avec cet exemple : 
```
SECRET_KEY=
DB_NAME=pokevioc
DB_USER=root
DB_PASS=
ADMIN_EMAIL = tommy.preel.dev@gmail.com
```
### SECRET_KEY est la nouvelle clé secrète
### DB_NAME est le nom de la base de données
### DB_USER est l'utilisateur administrateur de votre serveur web
### DB_PASS est le mot de passe administrateur de votre serveur web
### DB_PASS est le mail destinataire

### 8 - Effectuez une migration
```
python manage.py migrate
```
### 9 - Créez un superutilisateur
```
python manage.py createsuperuser
```
### 10 - Lancez le serveur
```
python manage.py runserver
```
# RÔLES ET PERMISSIONS

# Utilisateur public
### Peut :
### - Voir la page d'accueil
### - Voir la page À propos
### - Voir la page des services
### - Voir la page de contact
### - Envoyer un mail de contact

## Documentation
### Un document expliquant chaque dossier ainsi que la réalisation de la maquette est disponible sur le fichier .odt à la racine du projet



