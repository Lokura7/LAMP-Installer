#!/bin/bash
# Script para configurar MySQL/MariaDB

echo "Configurando MySQL/MariaDB..."

# Habilitar el acceso remoto a MySQL
sudo mysql -e "UPDATE mysql.user SET Host='%' WHERE Host='localhost'; FLUSH PRIVILEGES;"

# Reiniciar el servicio de MySQL/MariaDB
sudo systemctl restart mysql || sudo systemctl restart mariadb

echo "Configuración de MySQL/MariaDB completada."
