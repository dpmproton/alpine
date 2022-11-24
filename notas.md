# Crear un usb booteable para computadoras sin disco duro o de estado sólido.

El Sistema operativo se carga en RAM siempre, por lo que computadoras viejas funcionan un poco mejor.
Se necesian dos memorias USB. Una de uso temporal (no importa el tamaño) como boot y la otra para cargar cada vez que se reinicie o vuelva a prender la computadora (4 GB min).

## Instalación General

1. Descargar la imagen standard de alpine linux de https://www.alpinelinux.org/downloads/
2. Descargar e instalar (si en windows) balena etcher https://www.balena.io/etcher/
3. Cargar el iso descargado en la memoria usb de uso temporal utilizando balena etcher
4. Formatear una memoria USB en Fat32 (me funcionó con windows 7)
5. Ingresa  `root` y enter.
6. Realizar el setup-alpine ejecutando `setup-alpine -q`. A. todo le dices que default/no menos a la conexion de red, que tiene que quedar establecida.
7. Ya que termine, conecta la memoria USB para uso permanente
8. Ingresa la siguientes instrucciones para se copien a la usb de uso permanente los archivos base de la distribución y de arranque:

```
cd /home
wget https://raw.githubusercontent.com/dpmproton/alpine/main/mkbootable.sh
chmod +x mkbootable.sh
./mkbootable.sh
```

9. Una vez termine, ejecuta el siguiente código para marcar con bandera de booteable la partición de la usb permanente:

```
fdisk /dev/sdb
```
10. Cuando te pregunte la opcion escribe `a` y enter
11. Para la Partición selecciona `1` y enter
12. Cuando pregunte la opcion de nuevo ingresa `w`
13. Apaga el equipo ingresando `poweroff`
14. Quita la usb temporal y deja la usb permanente
15. Enciende el equipo
16. Debe de entrar haciendo el boot. Ingresa  `root` y enter.
17. Ejecuta `setup-alpine` (lo que esta entre corchetes es default y puedes seleccionarlo presionando enter)
18. 
```
Keyboard layout: none (or whatever suits your preference)
Hostname: localhost
Network interface: eth0 (or whatever suits your hardware i.e. wifi)
IP address: dhcp
Manual network configuration: no
Password: test123 (or whatever suits your preference)
Again password: test123 (or whatever suits your preference)
Time zone: UTC (or whatever suits your preference)
HTTP proxy: none
NTP client: chrony
**cuando pregunta por usuario extra crear pinocho sin nombre largo (solo presionar enter), contraseña la que quieras**
Mirror: 1 (or whatever suits your preference)
SSH server: none
Setup disk: none
Store configs: usb 
Apk cache directory: usb
```

18. Añadimos al usuario al grupo *wheel* modificando el archivo de configuración utilizando nano: `adduser pinocho wheel` 
19. Declara al usuario con autoridad para realizar cambios utilizando doas. Empieza por agregar el editor nano: `apk add nano`
20. Abre el archivo de configuracion en el editor ejecutando nano /etc/doas.conf 
21. Escribe: `permit persist wheel`
22. Guarda cambios presionando Ctrl+o, enter y luego ctrl+x
23. Una vez terminado, habilita todos los repositorios excepto el de prueba (último) removiendo el signo de gato del archivo de repositorios:  `nano /etc/apk/repositories`
24. Descarga el archivo de instalación del entorno del escritorio y ejecutalo:

```
cd /home
wget https://raw.githubusercontent.com/dpmproton/alpine/main/i4.sh
chmod +x mkbootable.sh
./mkbootable.sh
```

25. Al finalizar se debió de cargar el entorno de escritorio. Ingresa la contraseña que definiste para el usuario y entra.
26. Abre una terminal dando click en el botón de la esquina superior derecha 'Applications' y 'terminal emulator'
27. Descarga el script de instalación de programas:

```
cd /home
wget https://raw.githubusercontent.com/dpmproton/alpine/main/post.sh
chmod +x post.sh
./post.sh
```

28. Cambiar el lenguaje de libre office en *Herramientas, Opciones, Configuración de Idiomas, Idiomas*.
```
User Interface: Español(España)
Regional Configuration: Español(México)
Default Language for Documents: Español (México)
```
29. Ejecutar en la terminal `doas lbu commit -v` para que se guarden y conserven los cambios.

## Configurar red compartida

1. Para la red, en windows cambiar todo a encripcion a 40 o 56 bits y sin contraseñas
la compu que hostea el archivo compartido debe tener contrasena como usuario.
2. Obtener el usuario en cmd con: `net user`
3. En la computadora que estamos preparando dar click en el botón superior izquierdo *applications* y seleccionar *file manager*. Ahí seleccionar *browse network*, seleccionar windows network. Seleccionar grupo de trabajo y el equipo que comparte la carpeta. Le va a preguntar usuario, network y contraseña. Pone el usuario obtenido con `net user`, el network es el nombre del grupo de trabajo y contraseña es la contraseña de la cuenta del usuario de microsoft. Seleccionar recordar por siempre.
4. Copiar la dirección de la carpeta compartida
5. En el escritorio dar click derecho, add shortcut. Colocar en nombre: Carpeta para imprimir. En comando: `thunar` seguido de un espacio y la dirección de la carpeta compartida. Seleccionar un ícono adecuado.
6. Ejecutar comando para guardar los cambios.

## Agregar íconos

1. Dar click derecho en el escritorio

xfce4-popup-applicationsmenu

## Firefox



 
