#!/bin/bash
# Script para actualizar todo el stack (Apache, MySQL, PHP, phpMyAdmin, Gufw)

echo "Actualizando todo el stack..."

# Llamar a los scripts de actualización individuales
./update/apache_update.sh
./update/mysql_update.sh
./update/php_update.sh
./update/phpmyadmin_update.sh
./update/gufw_update.sh

echo "Actualización completa del stack ha finalizado."
