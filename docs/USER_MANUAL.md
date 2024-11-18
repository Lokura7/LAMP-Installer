# Manual del Usuario

## Introducción

Este manual proporciona una guía detallada para los usuarios finales sobre cómo utilizar el sistema de instalación, configuración, actualización y desinstalación de la pila LAMP (Linux, Apache, MySQL/MariaDB, PHP) y Gufw en un servidor Ubuntu.
A través de este proyecto, los usuarios podrán instalar y gestionar componentes del stack, verificar su estado, actualizar servicios y eliminar servicios que ya no sean necesarios.

## Requisitos Previos

- **Sistema Operativo**: Ubuntu 20.04 o superior
- **Acceso de Administrador (sudo)**: Para poder ejecutar ciertos scripts y modificar configuraciones
- **Conexión a Internet**: Necesaria para descargar paquetes e interactuar con servidores remotos.

## Instalación

### 1. Preparación del sistema

Antes de comenzar la instalación, asegúrate de que tu sistema esté actualizado. 
Ejecuta el siguiente comando para actualizar todos los paquetes:

```bash
sudo apt update && sudo apt upgrade -y
```
### 2. Instalación Completa
Para instalar la pila LAMP y Gufw, sigue estos pasos:

Navega a la carpeta ```install/``` en el proyecto y ejecuta el script de instalación completo:
```bash
cd /ruta/a/tu/proyecto/install/
sudo bash install_full_stack.sh
```

Este script instalará Apache, MySQL/MariaDB, PHP, phpMyAdmin, y Gufw.

3. Instalación de Componentes Específicos
Si prefieres instalar solo uno de los componentes de la pila, puedes ejecutar uno de los siguientes scripts según sea necesario:

Para instalar Apache:
```bash
sudo bash apache_install.sh
```
Para instalar MySQL/MariaDB:
```bash
sudo bash mysql_install.sh
```
Para instalar PHP:
```bash
sudo bash php_install.sh
```
Para instalar phpMyAdmin:
```bash
sudo bash phpmyadmin_install.sh
```
Para instalar Gufw (firewall gráfico):
```bash
sudo bash gufw_install.sh
```
### 4. Verificación de la Instalación
Una vez completada la instalación, puedes verificar que todos los servicios estén en funcionamiento ejecutando los siguientes scripts desde la carpeta ```status/```:

Para verificar el estado de Apache:
```bash
sudo bash check_apache_status.sh
```
Para verificar el estado de MySQL/MariaDB:
```bash
sudo bash check_mysql_status.sh
```
Para verificar el estado de PHP:
```bash
sudo bash check_php_status.sh
```
Para verificar el estado de phpMyAdmin:
```bash
sudo bash check_phpmyadmin_status.sh
```
Para verificar el estado de Gufw:
```bash
sudo bash check_gufw_status.sh
```
Para verificar el estado de UFW (Firewall):
```bash
sudo bash ufw_status.sh
```
Para conocer las direcciones IP del servidor:
```bash
sudo bash server_ip.sh
```
Para verificar si el host virtual está activo:
```bash
sudo bash virtual_host_status.sh
```
### 5. Actualización de Servicios
Si deseas actualizar los servicios ya instalados, puedes ejecutar el script de actualización correspondiente desde la carpeta ```update/```:

Para actualizar Apache:
```bash
sudo bash apache_update.sh
```
Para actualizar MySQL/MariaDB:
```bash
sudo bash mysql_update.sh
```
Para actualizar PHP:
```bash
sudo bash php_update.sh
```
Para actualizar phpMyAdmin:
```bash
sudo bash phpmyadmin_update.sh
```
Para actualizar Gufw:
```
sudo bash gufw_update.sh
```
Para actualizar todos los servicios de la pila LAMP (Apache, MySQL, PHP) y Gufw:
```bash
sudo bash update_full_stack.sh
```
## Desinstalación de Servicios
Si deseas eliminar algún servicio instalado, ejecuta los scripts de desinstalación correspondientes desde la carpeta ```uninstall/```:

Para desinstalar Apache:
```bash
sudo bash apache_uninstall.sh
```
Para desinstalar MySQL/MariaDB:
```bash
sudo bash mysql_uninstall.sh
```
Para desinstalar PHP:
```bash
sudo bash php_uninstall.sh
```
Para desinstalar phpMyAdmin:
```bash
sudo bash phpmyadmin_uninstall.sh
```
Para desinstalar Gufw:
```bash
sudo bash gufw_uninstall.sh
```
Para desinstalar todos los servicios de la pila LAMP (Apache, MySQL, PHP) y Gufw:
```bash
sudo bash uninstall_full_stack.sh
```
### 7. Manejo de Credenciales
Durante la instalación, es posible que se te solicite configurar credenciales para algunos servicios, como MySQL. Estas credenciales se almacenarán en el archivo ```credentials/```:

```db_credentials.sh```: Contiene las credenciales de la base de datos (usuario, contraseña).
```system_credentials.sh```: Contiene las credenciales del sistema (usuario y contraseña).
```config_summary.sh```: Resumen de la configuración actual de los servicios.
Ver o modificar las credenciales:
Si necesitas revisar o actualizar las credenciales, puedes hacerlo abriendo los archivos correspondientes dentro de la carpeta ```credentials/```.

Solución de Problemas
En caso de que encuentres algún problema durante la instalación, actualización o configuración, puedes consultar la sección de ```TROUBLESHOOTING.md``` o revisar los registros de los servicios:

Para verificar los registros de Apache:
```bash 
sudo tail -f /var/log/apache2/error.log
```
Para verificar los registros de MySQL/MariaDB:
```bash 
sudo tail -f /var/log/mysql/error.log
```
Para verificar los registros de UFW:
```bash 
sudo ufw status verbose
```
Si el problema persiste, no dudes en contactar con el administrador del sistema o consultar la documentación adicional disponible en ```bash TROUBLESHOOTING.md.```

Conclusión
Este proyecto te permite gestionar de manera fácil y eficiente la instalación, configuración, actualización, y desinstalación de la pila LAMP y Gufw en tu servidor Ubuntu. Si tienes alguna pregunta o necesitas más ayuda, consulta la documentación completa o ponte en contacto con el administrador del sistema.