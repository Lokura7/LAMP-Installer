#!/bin/bash
# Script para desinstalar PHP

echo "Desinstalando PHP..."

# Desinstalar PHP
sudo apt remove --purge php* -y

# Eliminar dependencias no necesarias
sudo apt autoremove -y

# Verificar si PHP ha sido eliminado
if ! dpkg -l | grep -q php; then
    echo "PHP ha sido desinstalado correctamente."
else
    echo "Hubo un problema al desinstalar PHP."
fi
