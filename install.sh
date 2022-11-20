apk update
apk upgrade
setup-xorg-base xfce4 xfce4-terminal lightdm-gtk-greeter xfce-polkit xfce4-screensaver consolekit2 dbus-x11
apk add xf86-video-amdgpu
apk add faenza-icon-theme gvfs-fuse gvfs-smb

xfce4-pulseaudio-plugin pulseaudio  pulseaudio-alsa alsa-plugins-pulse alsa-utilis alsa-utilis-doc alsa-lib alsaconf

rc-service dbus start && \
rc-update add dbus && \
rc-update add lightdm && \
rc-service lightdm start && \
