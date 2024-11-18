#!/bin/bash
# Script para actualizar Apache

echo "Actualizando Apache..."

# Actualizar los repositorios
sudo apt update -y

# Actualizar Apache
sudo apt install --only-upgrade apache2 -y

# Verificar si la actualización fue exitosa
if apache2 -v > /dev/null 2>&1; then
    echo "Apache se ha actualizado correctamente."
else
    echo "Hubo un problema al actualizar Apache."
fi
