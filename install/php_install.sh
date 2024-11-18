#!/bin/bash

# Comprobamos si PHP ya está instalado
if dpkg -l | grep -q php; then
    echo "PHP ya está instalado."
else
    # Actualizar repositorios e instalar PHP
    echo "Instalando PHP..."
    sudo apt update
    sudo apt install -y php php-cli php-fpm php-mysql

    # Verificar si la instalación fue exitosa
    if php -v > /dev/null; then
        echo "PHP se instaló correctamente."
    else
        echo "Error: PHP no se pudo instalar correctamente."
        exit 1
    fi
fi
