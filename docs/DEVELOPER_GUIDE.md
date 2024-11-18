
# Guía para Desarrolladores

## Introducción

Esta guía está dirigida a los desarrolladores que desean trabajar en el proyecto o contribuir a su mantenimiento y evolución. Aquí se describen los aspectos técnicos, cómo ejecutar los scripts, cómo agregar nuevas funcionalidades y cómo colaborar eficientemente en el proyecto.

## Estructura del Proyecto

El proyecto está organizado en varias carpetas principales, cada una de ellas contiene scripts específicos para distintas tareas:

```
root/
├── install/                     # Scripts para instalación de servicios
├── status/                      # Scripts para verificar el estado de los servicios
├── update/                      # Scripts para actualizar los servicios
├── uninstall/                   # Scripts para desinstalar servicios
├── config/                      # Scripts para configurar los servicios
├── credentials/                 # Scripts para gestionar credenciales y configuraciones sensibles
├── docs/                         # Documentación del proyecto
└── README.md                    # Información general del proyecto
```

### Detalles de las Carpetas:

1. **install/**: Contiene scripts para la instalación de servicios como Apache, MySQL/MariaDB, PHP, phpMyAdmin y Gufw.
2. **status/**: Scripts para verificar si los servicios están funcionando correctamente.
3. **update/**: Scripts para actualizar los servicios a sus últimas versiones.
4. **uninstall/**: Scripts para eliminar los servicios de manera segura.
5. **config/**: Scripts que permiten la configuración y personalización de los servicios.
6. **credentials/**: Manejo de credenciales y configuraciones sensibles, como las de la base de datos.
7. **docs/**: Documentación del proyecto, incluyendo guías, manuales y solución de problemas.

## Requisitos del Entorno de Desarrollo

Para trabajar en este proyecto, necesitarás tener un entorno de desarrollo con acceso a una distribución de Linux (preferentemente Ubuntu o Debian). Los siguientes paquetes son necesarios para ejecutar y modificar los scripts:

```bash
sudo apt install curl wget git bash sudo -y
```

Si vas a contribuir al código o modificar los scripts, también deberías tener una instalación de un editor de texto como Visual Studio Code, Sublime Text, o cualquier editor que prefieras.

## Clonar el Repositorio

Para empezar a trabajar en el proyecto, primero clona el repositorio en tu máquina local:

```bash
git clone https://github.com/tu_usuario/tu_repositorio.git
cd tu_repositorio
```

## Cómo Ejecutar los Scripts

Los scripts de instalación, actualización, desinstalación y configuración están diseñados para ser ejecutados de manera independiente. Cada script está ubicado en el directorio correspondiente (`install/`, `status/`, `update/`, `uninstall/`, `config/`).

### Ejemplo: Instalación de Apache

Para instalar Apache, ejecuta el siguiente comando:

```bash
bash install/apache_install.sh
```

Para verificar si Apache está funcionando correctamente, puedes usar el script:

```bash
bash status/check_apache_status.sh
```

### Ejemplo: Actualizar Apache

Para actualizar Apache, ejecuta:

```bash
bash update/apache_update.sh
```

### Ejemplo: Desinstalar Apache

Si deseas desinstalar Apache, usa el siguiente script:

```bash
bash uninstall/apache_uninstall.sh
```

## Agregar Nuevas Funcionalidades

Si deseas agregar nuevas funcionalidades o modificar las existentes, asegúrate de seguir estos pasos:

1. **Crear un nuevo script**: Si necesitas agregar una nueva funcionalidad (como un nuevo servicio o herramienta), crea un script en el directorio correspondiente. Por ejemplo, si estás agregando un nuevo servicio para instalar, colócalo en `install/`.

2. **Probar el script**: Después de agregar tu script, asegúrate de probarlo en un entorno de desarrollo antes de hacer un `commit` a la rama principal. Los scripts deben ser fácilmente ejecutables y no deben requerir configuraciones adicionales por parte del usuario.

3. **Documentar los cambios**: Si has agregado nuevas funcionalidades o modificaciones importantes, asegúrate de actualizar la documentación en el directorio `docs/`. Esto incluye las guías de instalación, los detalles técnicos y la solución de problemas.

4. **Uso de funciones comunes**: Si creas funciones que podrían ser reutilizadas en varios scripts, considera agregar una carpeta `lib/` para contener estas funciones y hacer que el código sea más modular.

## Contribuir al Proyecto

Si deseas contribuir al proyecto, sigue estos pasos:

1. **Crea una rama** para realizar tus cambios. Usa un nombre descriptivo para la rama, como `feature/nueva-funcionalidad` o `bugfix/correccion-error`.

    ```bash
    git checkout -b feature/nueva-funcionalidad
    ```

2. **Realiza los cambios necesarios**. Asegúrate de que los scripts sean modulares y fáciles de entender.

3. **Prueba los scripts** en un entorno de desarrollo antes de realizar el `commit`.

4. **Haz un commit** de los cambios realizados:

    ```bash
    git commit -m "Descripción de los cambios"
    ```

5. **Sube tus cambios al repositorio**:

    ```bash
    git push origin feature/nueva-funcionalidad
    ```

6. **Abre un Pull Request** para que los mantenedores del proyecto revisen tus cambios.

## Cómo Probar los Scripts

Cada script está diseñado para ser ejecutado independientemente. Para probar los scripts:

1. **Verifica que el sistema esté limpio**: Antes de ejecutar cualquier script, asegúrate de que el sistema esté en un estado limpio (sin instalaciones parciales de servicios).

2. **Ejecuta un script de instalación**: Prueba la instalación de uno de los servicios, por ejemplo, Apache:

    ```bash
    bash install/apache_install.sh
    ```

3. **Verifica el estado de los servicios**: Después de la instalación, asegúrate de que el servicio se esté ejecutando correctamente utilizando el script correspondiente en el directorio `status/`:

    ```bash
    bash status/check_apache_status.sh
    ```

4. **Realiza pruebas adicionales**: Realiza pruebas con los scripts de actualización, desinstalación y configuración para asegurarte de que todo funcione según lo esperado.

## Solución de Problemas

Si encuentras errores o problemas al ejecutar los scripts, sigue estos pasos para solucionarlos:

1. **Revisa los logs**: Los errores suelen imprimirse en la terminal. Revisa los mensajes de error para obtener más detalles sobre lo que salió mal.

2. **Verifica dependencias**: Asegúrate de que todas las dependencias necesarias estén instaladas en tu sistema antes de ejecutar los scripts.

3. **Consulta el archivo `TROUBLESHOOTING.md`**: Este archivo en la carpeta `docs/` contiene soluciones comunes a problemas que podrían surgir durante la instalación o ejecución de los scripts.

4. **Pide ayuda**: Si no puedes resolver el problema, no dudes en abrir un *issue* en el repositorio de GitHub o contactar a los mantenedores del proyecto.

## Conclusión

Esta guía te proporciona las bases para trabajar en el proyecto y contribuir con nuevas funcionalidades o solucionar problemas. Recuerda siempre probar los scripts en un entorno de desarrollo antes de realizar cambios en el entorno de producción, y documenta adecuadamente cualquier nueva funcionalidad que agregues. Si tienes dudas, consulta la documentación y si necesitas ayuda, no dudes en pedirla a través de los canales apropiados.
