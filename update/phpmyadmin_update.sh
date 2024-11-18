#!/bin/bash
# Script para actualizar phpMyAdmin

echo "Actualizando phpMyAdmin..."

# Actualizar los repositorios
sudo apt update -y

# Actualizar phpMyAdmin
sudo apt install --only-upgrade phpmyadmin -y

# Verificar si phpMyAdmin se ha actualizado correctamente
if dpkg -l | grep -q phpmyadmin; then
    echo "phpMyAdmin se ha actualizado correctamente."
else
    echo "Hubo un problema al actualizar phpMyAdmin."
fi
