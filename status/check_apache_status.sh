#!/bin/bash
# Verificar el estado de Apache

echo "Verificando estado de Apache..."

if systemctl is-active --quiet apache2; then
    echo "Apache está activo."
else
    echo "Apache no está activo."
fi
