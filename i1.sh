setup-xorg-base xf86-video-amdgpu
apk add gnome
apk add gnome-apps-core
apk add gnome-apps-extra

rc-service gdm start
rc-update add gdm
apk add bash
apk add bash-completion
apk add thunar-volman
lbu commit -v
