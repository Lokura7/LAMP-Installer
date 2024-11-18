#!/bin/bash

# Instalar Apache
./apache_install.sh

# Instalar MariaDB
./mysql_install.sh

# Instalar PHP
./php_install.sh

# Instalar phpMyAdmin
./phpmyadmin_install.sh

# Instalar Gufw
./gufw_install.sh

echo "Instalación completa del stack LAMP finalizada."
