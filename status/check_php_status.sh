#!/bin/bash
# Verificar el estado de PHP

echo "Verificando estado de PHP..."

if php -v > /dev/null; then
    echo "PHP está instalado."
else
    echo "PHP no está instalado."
fi
