setup-xorg-base xf86-video-amdgpu xfce4 xfce4-terminal lightdm-gtk-greeter xfce-polkit xfce4-screensaver consolekit2 dbus-x11
apk add faenza-icon-theme 
setup-devd udev
apk add gvfs udisks2 ntfs-3g gvfs-fuse gvfs-smb
xfce4-pulseaudio-plugin pulseaudio  pulseaudio-alsa alsa-plugins-pulse alsa-utilis alsa-utilis-doc alsa-lib alsaconf

rc-service dbus start && \
rc-update add dbus && \
rc-update add lightdm && \
rc-service lightdm start && \
