#!/bin/bash
# Script para desinstalar MySQL/MariaDB

echo "Desinstalando MySQL/MariaDB..."

# Detener el servicio de MySQL o MariaDB
if dpkg -l | grep -q mariadb; then
    sudo systemctl stop mariadb
    sudo apt remove --purge mariadb-server mariadb-client -y
elif dpkg -l | grep -q mysql; then
    sudo systemctl stop mysql
    sudo apt remove --purge mysql-server mysql-client -y
else
    echo "No se detectó MySQL ni MariaDB."
    exit 1
fi

# Eliminar dependencias no necesarias
sudo apt autoremove -y

# Verificar si MySQL/MariaDB ha sido eliminado
if ! dpkg -l | grep -q mariadb || ! dpkg -l | grep -q mysql; then
    echo "MySQL/MariaDB ha sido desinstalado correctamente."
else
    echo "Hubo un problema al desinstalar MySQL/MariaDB."
fi
