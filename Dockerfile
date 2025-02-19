# Utiliser l'image officielle PHP avec Apache
FROM php:8.0-apache

# Installer les extensions PHP nécessaires (par exemple, PDO, mysqli, etc.)
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copier les fichiers de ton projet dans le répertoire web d'Apache
COPY . /var/www/html/

# Activer les modules Apache nécessaires
RUN a2enmod rewrite

# Exposer le port 80 pour accéder à l'application
EXPOSE 80

# Commande par défaut pour démarrer Apache
CMD ["apache2-foreground"]

