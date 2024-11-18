#!/bin/bash

# Comprobamos si Apache ya está instalado
if dpkg -l | grep -q apache2; then
    echo "Apache ya está instalado."
else
    # Actualizar repositorios y luego instalar Apache
    echo "Instalando Apache..."
    sudo apt update
    sudo apt install -y apache2

    # Verificar si la instalación fue exitosa
    if systemctl is-active --quiet apache2; then
        echo "Apache se instaló correctamente y está en ejecución."
    else
        echo "Error: Apache no se pudo instalar correctamente."
        exit 1
    fi
fi
