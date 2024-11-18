#!/bin/bash
# Script para configurar phpMyAdmin

echo "Configurando phpMyAdmin..."

# Configuración inicial (seguridad, cookies, etc.)
sudo cp /usr/share/phpmyadmin/config.sample.inc.php /etc/phpmyadmin/config.inc.php
sudo chmod 644 /etc/phpmyadmin/config.inc.php

# Reiniciar el servicio de Apache para aplicar cambios
sudo systemctl restart apache2

echo "Configuración de phpMyAdmin completada."
