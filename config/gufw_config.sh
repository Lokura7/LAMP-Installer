#!/bin/bash
# Script para configurar Gufw

echo "Configurando Gufw..."

# Habilitar UFW si no está activo
sudo ufw enable

# Habilitar puerto 80 para HTTP
sudo ufw allow 80/tcp

# Habilitar puerto 443 para HTTPS
sudo ufw allow 443/tcp

# Habilitar puerto 22 para SSH
sudo ufw allow 22/tcp

echo "Configuración de Gufw completada."
