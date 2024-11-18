#!/bin/bash
# Script para desinstalar todo el stack (Apache, MySQL/MariaDB, PHP, phpMyAdmin, Gufw)

echo "Desinstalando todo el stack..."

# Llamar a los scripts de desinstalación individuales
./uninstall/apache_uninstall.sh
./uninstall/mysql_uninstall.sh
./uninstall/php_uninstall.sh
./uninstall/phpmyadmin_uninstall.sh
./uninstall/gufw_uninstall.sh

echo "Desinstalación completa del stack ha finalizado."
