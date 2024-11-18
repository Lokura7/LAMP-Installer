#!/bin/bash
# Script para desinstalar Apache

echo "Desinstalando Apache..."

# Detener Apache si está en ejecución
sudo systemctl stop apache2

# Desinstalar Apache
sudo apt remove --purge apache2 -y

# Eliminar dependencias no necesarias
sudo apt autoremove -y

# Verificar si Apache ha sido eliminado
if ! dpkg -l | grep -q apache2; then
    echo "Apache ha sido desinstalado correctamente."
else
    echo "Hubo un problema al desinstalar Apache."
fi
