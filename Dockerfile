# Image de base légère avec Python
FROM python:3.13-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances
COPY requirements.txt .

# Installer les dépendances dans l'image
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le reste du code dans l'image
COPY . .

# Exposer le port 5000 (celui utilisé par Flask)
EXPOSE 5000

# Commande de lancement de l'application Flask
CMD ["python", "app.py"]
