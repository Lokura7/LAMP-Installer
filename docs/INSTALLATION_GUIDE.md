
# Guía de Instalación

## Descripción

Esta guía te ayudará a instalar y configurar todo el stack necesario para ejecutar un servidor LAMP (Linux, Apache, MySQL/MariaDB, PHP), además de instalar phpMyAdmin y Gufw (una interfaz gráfica para UFW). El proceso se realizará mediante scripts de instalación automatizados, los cuales te permitirán configurar rápidamente un servidor web funcional.

## Requisitos previos

Antes de comenzar, asegúrate de tener una máquina con Linux (preferiblemente Ubuntu o Debian) y acceso a una cuenta con privilegios de `sudo` (superusuario). Además, asegúrate de que tu sistema esté actualizado.

### 1. **Actualizar el sistema**

Es recomendable que tu sistema esté completamente actualizado antes de comenzar la instalación de los servicios. Ejecuta los siguientes comandos para asegurarte de que tienes las últimas actualizaciones:

```bash
sudo apt update
sudo apt upgrade -y
```

### 2. Instalar dependencias necesarias

Antes de ejecutar los scripts de instalación, asegúrate de tener instaladas las herramientas necesarias para poder ejecutarlos:

```bash
sudo apt install curl wget git -y
```

## Instalación del Stack LAMP

### 1. Clonar el repositorio

Clona el repositorio donde se encuentran los scripts de instalación:

```bash
git clone https://github.com/tu_usuario/tu_repositorio.git
cd tu_repositorio
```

### 2. Ejecutar el script de instalación

Dentro del directorio del proyecto, encontrarás varios scripts para instalar Apache, MySQL/MariaDB, PHP, phpMyAdmin y Gufw. Para instalar todo el stack, simplemente ejecuta el siguiente script:

```bash
sudo bash install/install_full_stack.sh
```

Este script se encargará de:

- Instalar Apache
- Instalar MySQL o MariaDB
- Instalar PHP
- Instalar phpMyAdmin
- Instalar Gufw
- Configurar el firewall con UFW

### 3. Confirmar la instalación

El script verificará que todos los servicios se hayan instalado correctamente. Al final del proceso, verás un resumen con los servicios instalados y las configuraciones básicas.

## Verificar el estado de los servicios

Una vez que el script de instalación haya terminado, puedes verificar el estado de los servicios instalados usando los scripts en el directorio `status/`. Por ejemplo, para verificar el estado de Apache, ejecuta:

```bash
bash status/check_apache_status.sh
```

Para otros servicios, puedes usar scripts similares:

```bash
bash status/check_mysql_status.sh      # Para MySQL/MariaDB
bash status/check_php_status.sh        # Para PHP
bash status/check_gufw_status.sh       # Para Gufw
bash status/ufw_status.sh              # Para verificar el firewall
bash status/server_ip.sh               # Para mostrar la IP del servidor
```

## Configuración adicional

Si deseas realizar alguna configuración adicional, como ajustar los parámetros de Apache, MySQL o PHP, puedes utilizar los scripts de configuración disponibles en el directorio `config/`.

Por ejemplo, para configurar Apache, puedes ejecutar:

```bash
bash config/apache_config.sh
```

De manera similar, puedes configurar MySQL, PHP y Gufw:

```bash
bash config/mysql_config.sh
bash config/php_config.sh
bash config/gufw_config.sh
```

## Actualización de servicios

Para mantener tu sistema actualizado, utiliza los scripts de actualización disponibles en el directorio `update/`. Por ejemplo, para actualizar Apache, puedes ejecutar:

```bash
bash update/apache_update.sh
```

También puedes actualizar todos los servicios con el siguiente script:

```bash
bash update/update_full_stack.sh
```

Este script actualizará Apache, MySQL/MariaDB, PHP, phpMyAdmin y Gufw a las últimas versiones disponibles.

## Desinstalación de servicios

Si en algún momento deseas desinstalar algún servicio, puedes utilizar los scripts de desinstalación disponibles en el directorio `uninstall/`. Por ejemplo, para desinstalar Apache:

```bash
bash uninstall/apache_uninstall.sh
```

Para desinstalar todos los servicios:

```bash
bash uninstall/uninstall_full_stack.sh
```

Este script eliminará todos los servicios instalados (Apache, MySQL/MariaDB, PHP, phpMyAdmin, Gufw) y sus configuraciones.

## Manejo de credenciales

Las credenciales (como las de la base de datos) se almacenan en el directorio `credentials/`. Puedes consultar o modificar estas credenciales utilizando los scripts disponibles allí.

Para ver un resumen de las configuraciones actuales (como puertos y direcciones IP), puedes ejecutar:

```bash
bash credentials/config_summary.sh
```

## Problemas comunes y solución

En caso de que encuentres algún problema durante la instalación o el uso, consulta el archivo `TROUBLESHOOTING.md` en el directorio `docs/` para obtener soluciones a los problemas más comunes.

## Conclusión

Con estos pasos habrás instalado y configurado un servidor LAMP completamente funcional, con phpMyAdmin y Gufw. Asegúrate de revisar los otros scripts para configurar, actualizar o desinstalar los servicios según sea necesario. Si tienes algún problema, no dudes en consultar la documentación o los archivos de solución de problemas.

Este archivo te proporciona una guía completa para instalar, verificar, actualizar, desinstalar y configurar todos los servicios, incluyendo Apache, MySQL/MariaDB, PHP, phpMyAdmin y Gufw. Además, incluye cómo manejar las credenciales y cómo resolver problemas comunes.
