# Crear un usb booteable para computadoras sin disco duro o de estado sólido.

El Sistema operativo se carga en RAM siempre, por lo que computadoras viejas funcionan un poco mejor.
Se necesian dos memorias USB. Una de uso temporal (no importa el tamaño) como boot y la otra para cargar cada vez que se reinicie o vuelva a prender la computadora (4 GB min).

1. Descargar la imagen standard de alpine linux de https://www.alpinelinux.org/downloads/
2. Descargar e instalar (si en windows) balena etcher https://www.balena.io/etcher/
3. Cargar el iso descargado en la memoria usb de uso temporal utilizando balena etcher
4. Formatear una memoria USB en Fat32 (me funcionó con windows 7)
5. 

Hacer el boot install de alpine
hacer booteable con fsdisk bootable -a

Quitar el disco de instalacion, y arrancar desde la usb que e trabajo

correr setup-alpine.
cuando pregunta por usuario extra crear pinocho sin nombre largo, contraseña la que quieras
Selecionar disco: ninguno | las siguientes dos opciones seleccionar usb

descarga i4.sh con 
wget https://raw.githubusercontent.com/dpmproton/alpine/main/i4.sh
hazlo ejecutable con chmod +x i4.sh
ejecutalo

si todo sale bien entras el entorno de escritorio


luego ejecuta el post 

Para la red, en windows cambiar todo a encripcion a 40 o 56 bits
la compu que hostea el archivo compartido debe tener contrasena

obtener el usuario en cmd con>  net user

poner ese usuarion , grupo de trabajo y la contrasena de la cuenta del usuario, poner recordar por siempre

instalar paquete de espanol desde el usuario en libreoffice
https://extensions.libreoffice.org/en/extensions/show/spanish-dictionaries
descargar y abrir con libreoffice
Cambiar el lenguaje de libre office en herramientas opciones o configuracion y lenguaje

# agrega el editor de texto nano
apk add doas nano
# añadir usuario a grupo wheel
Adduser pinocho wheel  
nano /etc/doas.conf
#Añadir línea:
#Permit persist wheel
# habilita todos los repositorios excepto el de prueba (último) removiendo el signo de gato
nano /etc/apk/repositories 
