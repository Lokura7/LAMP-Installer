#!/bin/bash
# Script para desinstalar Gufw

echo "Desinstalando Gufw..."

# Desinstalar Gufw
sudo apt remove --purge gufw -y

# Eliminar dependencias no necesarias
sudo apt autoremove -y

# Verificar si Gufw ha sido eliminado
if ! dpkg -l | grep -q gufw; then
    echo "Gufw ha sido desinstalado correctamente."
else
    echo "Hubo un problema al desinstalar Gufw."
fi
