#!/bin/bash
# Script para mostrar un resumen de las configuraciones actuales

echo "Resumen de las configuraciones del sistema:"

echo "Apache: $(apache2 -v | head -n 1)"
echo "MySQL/MariaDB: $(mysql --version)"
echo "PHP: $(php -v | head -n 1)"
echo "phpMyAdmin: $(dpkg -l | grep phpmyadmin)"
echo "Gufw: $(dpkg -l | grep gufw)"

# Mostrar las IPs del servidor
echo "Direcciones IP del servidor: $(hostname -I)"
