#!/bin/bash

# Comprobamos si MariaDB ya está instalado
if dpkg -l | grep -q mariadb-server; then
    echo "MariaDB ya está instalado."
else
    # Actualizar repositorios y luego instalar MariaDB
    echo "Instalando MariaDB..."
    sudo apt update
    sudo apt install -y mariadb-server

    # Verificar si la instalación fue exitosa
    if systemctl is-active --quiet mariadb; then
        echo "MariaDB se instaló correctamente y está en ejecución."
    else
        echo "Error: MariaDB no se pudo instalar correctamente."
        exit 1
    fi
fi
