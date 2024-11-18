#!/bin/bash
# Script para almacenar las credenciales del sistema

echo "Ingrese las credenciales del sistema:"

read -p "Nombre de usuario: " sys_user
read -sp "Contraseña del usuario: " sys_password
echo

# Guardar las credenciales en un archivo seguro
echo "sys_user=$sys_user" > /etc/system_credentials.conf
echo "sys_password=$sys_password" >> /etc/system_credentials.conf

echo "Las credenciales del sistema se han guardado correctamente."
