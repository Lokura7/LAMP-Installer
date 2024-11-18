#!/bin/bash

# Comprobamos si phpMyAdmin ya está instalado
if dpkg -l | grep -q phpmyadmin; then
    echo "phpMyAdmin ya está instalado."
else
    # Actualizar repositorios e instalar phpMyAdmin
    echo "Instalando phpMyAdmin..."
    sudo apt update
    sudo apt install -y phpmyadmin

    # Verificar si la instalación fue exitosa
    if dpkg -l | grep -q phpmyadmin; then
        echo "phpMyAdmin se instaló correctamente."
    else
        echo "Error: phpMyAdmin no se pudo instalar correctamente."
        exit 1
    fi
fi
