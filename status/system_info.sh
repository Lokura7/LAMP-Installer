#!/bin/bash
# Información general del sistema

echo "Información del sistema:"

# Nombre del servidor
echo "Nombre del servidor: $(hostname)"

# Versión de Linux
echo "Versión de Linux: $(lsb_release -d)"

# Información de la CPU
echo "Información de la CPU: $(lscpu | grep 'Model name')"

# Memoria RAM
echo "Memoria RAM total: $(free -h | grep Mem | awk '{print $2}')"

# Espacio en disco
echo "Espacio disponible en disco: $(df -h | grep '^/dev' | awk '{print $4}')"
