#!/bin/bash
# Script para configurar PHP

echo "Configurando PHP..."

# Cambiar el límite de memoria en PHP
sudo sed -i 's/memory_limit = .*/memory_limit = 256M/' /etc/php/*/apache2/php.ini

# Habilitar el manejo de archivos grandes
sudo sed -i 's/upload_max_filesize = .*/upload_max_filesize = 50M/' /etc/php/*/apache2/php.ini
sudo sed -i 's/post_max_size = .*/post_max_size = 50M/' /etc/php/*/apache2/php.ini

# Reiniciar Apache para aplicar cambios
sudo systemctl restart apache2

echo "Configuración de PHP completada."
