Formatear usb en Fat32 (con windows si gustas) 


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

APK add doas nano
Adduser recepcion1 wheel # add user to group wheel 
Nano /etc/doas.conf
Añadir línea:
Permit persist wheel
Nano /etc/APK/repositories # Remove comments from all but last
