# Imagen base PHP con Apache
FROM php:8.2-apache

# Instalar dependencias necesarias para PostgreSQL
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Copiar archivos del proyecto al contenedor
COPY . /var/www/html/

# Establecer el directorio de trabajo
WORKDIR /var/www/html/public

# Exponer el puerto que Render utiliza
EXPOSE 10000

# Comando de inicio
CMD ["php", "-S", "0.0.0.0:10000", "-t", "."]


