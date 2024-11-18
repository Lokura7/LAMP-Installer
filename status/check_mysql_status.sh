#!/bin/bash
# Verificar el estado de MySQL/MariaDB

echo "Verificando estado de MySQL/MariaDB..."

if systemctl is-active --quiet mariadb; then
    echo "MariaDB está activo."
elif systemctl is-active --quiet mysql; then
    echo "MySQL está activo."
else
    echo "MariaDB/MySQL no está activo."
fi
