lbu include /home
lbu include /var
adduser pinocho wheel
echo "permit persist wheel" > /etc/doas.conf
echo 'export LANG="es_ES.utf8"' > /home/pinocho/.profile
echo 'export LC_COLLATE="C"' > /home/pinocho/.profile
setup-xorg-base xfce4 xfce4-terminal lightdm-gtk-greeter xfce-polkit xfce4-screensaver consolekit2 dbus-x11 xfce4-panel xfce4-screenshooter xfce4-power-manager xfce4-taskmanager xfce4-xkb-plugin thunar-archive-plugin xfce4-whiskermenu-plugin
apk add faenza-icon-theme gvfs udisks2 ntfs-3g gvfs-smb galculator file-roller mousepad xfce4-panel-lang xfdesktop-lang bluez blueman xfce4-wavelan-plugin network-manager-applet connman network-manager-applet

apk add geany ristretto fontconfig msttcorefonts-installer font-opensans font-freefont ttf-droid
apk add cups cups-libs cups-pdf cups-client cups-filters hplip
/etc/init.d/cupsd start
rc-update add cupsd boot
update-ms-fonts 
fc-cache -f
apk clean cache
lbu include /usr/share/fonts/truetype/msttcorefonts/

setup-devd udev
apk add xfce4-pulseaudio-plugin pulseaudio  pulseaudio-alsa alsa-plugins-pulse alsa-utils alsa-utils-doc alsa-lib alsaconf alsa-ucm-conf pavucontrol
addgroup pinocho audio
addgroup root audio

rc-update add bluetooth
rc-service udev start
rc-update udev dbus
rc-service dbus start
rc-update add dbus
rc-service lightdm start
rc-update add lightdm
rc-service alsa start
rc-update add alsa

lbu commit -v
