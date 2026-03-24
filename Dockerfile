FROM python:3.12-slim

# Dossier de travail dans le conteneur
WORKDIR /app

# Copier uniquement les dépendances d'abord (optimisation)
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du projet
COPY . .

# Exposer le port Flask
EXPOSE 5000

# Lancer l'application
CMD ["python", "app.py"]