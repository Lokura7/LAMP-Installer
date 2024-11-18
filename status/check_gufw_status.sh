#!/bin/bash
# Verificar el estado de Gufw

echo "Verificando estado de Gufw..."

if dpkg -l | grep -q gufw; then
    echo "Gufw está instalado."
else
    echo "Gufw no está instalado."
fi
