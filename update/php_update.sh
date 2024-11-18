#!/bin/bash
# Script para actualizar PHP

echo "Actualizando PHP..."

# Actualizar los repositorios
sudo apt update -y

# Actualizar PHP
sudo apt install --only-upgrade php php-cli php-fpm php-mysql php-curl php-mbstring php-xml php-zip -y

# Verificar si PHP se ha actualizado correctamente
if php -v > /dev/null 2>&1; then
    echo "PHP se ha actualizado correctamente."
else
    echo "Hubo un problema al actualizar PHP."
fi
