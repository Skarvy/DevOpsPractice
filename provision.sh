#!/bin/bash

# Actualizar la lista de paquetes
sudo apt-get update

# Instalar Apache
sudo apt-get install -y apache2

# Habilitar el mod_rewrite para Apache
sudo a2enmod rewrite

# Reiniciar Apache para aplicar cambios
sudo systemctl restart apache2

# Copiar el archivo de configuración del servidor web desde la máquina host a la VM Ubuntu
sudo cp /vagrant/000-default.conf /etc/apache2/sites-available/000-default.conf

# Reiniciar Apache para aplicar cambios
sudo systemctl restart apache2

# Descargar el código de la aplicación (cambiar la URL al repositorio correcto)
cd /var/www/html
sudo rm index.html
sudo git clone https://github.com/Skarvy/TestApp .

# Instalar dependencias si es necesario (ejemplo: PHP)
# sudo apt-get install -y php libapache2-mod-php
