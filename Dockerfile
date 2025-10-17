# Imagen base de PHP con Apache
FROM php:8.2-apache

# Copiar archivos del proyecto al contenedor
COPY . /var/www/html/

# Dar permisos
RUN chown -R www-data:www-data /var/www/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Apache
CMD ["apache2-foreground"]
