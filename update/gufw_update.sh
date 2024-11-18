#!/bin/bash
# Script para actualizar Gufw

echo "Actualizando Gufw..."

# Actualizar los repositorios
sudo apt update -y

# Actualizar Gufw
sudo apt install --only-upgrade gufw -y

# Verificar si Gufw se ha actualizado correctamente
if dpkg -l | grep -q gufw; then
    echo "Gufw se ha actualizado correctamente."
else
    echo "Hubo un problema al actualizar Gufw."
fi
