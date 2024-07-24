# Utiliser une image Python de base
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /schoolmanager

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste des fichiers du projet
COPY . .

# Exposer le port de l'application
EXPOSE 8000

# Commande par défaut pour démarrer le serveur de développement Django
CMD ["python", "schoolmanager/manage.py", "runserver", "0.0.0.0:8000"]


