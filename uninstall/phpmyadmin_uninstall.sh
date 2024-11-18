#!/bin/bash
# Script para desinstalar phpMyAdmin

echo "Desinstalando phpMyAdmin..."

# Desinstalar phpMyAdmin
sudo apt remove --purge phpmyadmin -y

# Eliminar dependencias no necesarias
sudo apt autoremove -y

# Verificar si phpMyAdmin ha sido eliminado
if ! dpkg -l | grep -q phpmyadmin; then
    echo "phpMyAdmin ha sido desinstalado correctamente."
else
    echo "Hubo un problema al desinstalar phpMyAdmin."
fi
