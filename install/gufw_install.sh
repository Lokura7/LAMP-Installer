#!/bin/bash

# Comprobamos si Gufw ya está instalado
if dpkg -l | grep -q gufw; then
    echo "Gufw ya está instalado."
else
    # Actualizar repositorios e instalar Gufw
    echo "Instalando Gufw..."
    sudo apt update
    sudo apt install -y gufw

    # Verificar si la instalación fue exitosa
    if dpkg -l | grep -q gufw; then
        echo "Gufw se instaló correctamente."
    else
        echo "Error: Gufw no se pudo instalar correctamente."
        exit 1
    fi
fi
