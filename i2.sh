setup-xorg-base xf86-video-amdgpu xfce4 xfce4-terminal lightdm-gtk-greeter xfce-polkit xfce4-screensaver consolekit2 dbus-x11 xfce4-panel xfce4-screenshooter xfce4-power-manager xfce4-taskmanager xfce4-xkb-plugin 
apk add faenza-icon-theme 
setup-devd udev
apk add gvfs udisks2 ntfs-3g gvfs-fuse gvfs-smb
apk add xfce4-pulseaudio-plugin pulseaudio  pulseaudio-alsa alsa-plugins-pulse alsa-utilis alsa-utilis-doc alsa-lib alsaconf pavucontrol paman

rc-service dbus start && \
rc-update add dbus && \
rc-update add lightdm && \
rc-service lightdm start && \
