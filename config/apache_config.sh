#!/bin/bash
# Script para configurar Apache

echo "Configurando Apache..."

# Habilitar módulos comunes
sudo a2enmod rewrite

# Habilitar configuración del host virtual
sudo a2ensite 000-default.conf

# Reiniciar Apache para aplicar cambios
sudo systemctl restart apache2

echo "Configuración de Apache completada."
