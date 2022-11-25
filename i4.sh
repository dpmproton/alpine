lbu include /home
lbu include /var
lbu include /home/pinocho/.mozilla/firefox/
adduser piocho
echo pinocho:usb | chpasswd
adduser pinocho wheel
echo "permit persist wheel" > /etc/doas.conf
setup-xorg-base xfce4 xfce4-terminal lightdm-gtk-greeter xfce-polkit xfce4-screensaver consolekit2 dbus-x11 xfce4-panel xfce4-screenshooter xfce4-power-manager xfce4-taskmanager xfce4-xkb-plugin 
apk add faenza-icon-theme gvfs udisks2 ntfs-3g gvfs-smb thunar-archive-plugin
setup-devd udev
apk add xfce4-pulseaudio-plugin pulseaudio  pulseaudio-alsa alsa-plugins-pulse alsa-utils alsa-utils-doc alsa-lib alsaconf alsa-ucm-conf pavucontrol
addgroup pinocho audio
addgroup root audio
rc-service udev start
rc-update udev dbus
rc-service dbus start
rc-update add dbus
rc-service lightdm start
rc-update add lightdm
rc-service alsa start
rc-update add alsa
