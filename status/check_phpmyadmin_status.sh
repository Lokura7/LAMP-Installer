#!/bin/bash
# Verificar el estado de phpMyAdmin

echo "Verificando estado de phpMyAdmin..."

if dpkg -l | grep -q phpmyadmin; then
    echo "phpMyAdmin está instalado."
else
    echo "phpMyAdmin no está instalado."
fi
