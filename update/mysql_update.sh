#!/bin/bash
# Script para actualizar MySQL/MariaDB

echo "Actualizando MySQL/MariaDB..."

# Actualizar los repositorios
sudo apt update -y

# Actualizar MySQL/MariaDB
sudo apt install --only-upgrade mysql-server mariadb-server -y

# Verificar si MySQL/MariaDB fue actualizado correctamente
if systemctl is-active --quiet mysql || systemctl is-active --quiet mariadb; then
    echo "MySQL/MariaDB se ha actualizado correctamente."
else
    echo "Hubo un problema al actualizar MySQL/MariaDB."
fi
