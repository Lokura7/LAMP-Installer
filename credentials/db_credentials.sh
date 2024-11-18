#!/bin/bash
# Script para almacenar y gestionar las credenciales de la base de datos

echo "Ingrese las credenciales de la base de datos:"

read -p "Usuario de la base de datos: " db_user
read -sp "Contraseña de la base de datos: " db_password
echo

# Guardar las credenciales en un archivo seguro
echo "db_user=$db_user" > /etc/db_credentials.conf
echo "db_password=$db_password" >> /etc/db_credentials.conf

echo "Las credenciales de la base de datos se han guardado correctamente."
