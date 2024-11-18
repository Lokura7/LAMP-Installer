#!/bin/bash
# Verificar si el host virtual está activo

echo "Verificando el estado del host virtual..."

if [ -f /etc/apache2/sites-available/your_domain.conf ]; then
    echo "El host virtual para 'your_domain' está configurado."
    if apache2ctl -S | grep -q 'your_domain'; then
        echo "El host virtual está activo."
    else
        echo "El host virtual no está activo."
    fi
else
    echo "El archivo de configuración del host virtual no existe."
fi
