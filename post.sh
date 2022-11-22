apk add firefox
apk add flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.onlyoffice.desktopeditors
apk adg xdg-user-dirs-package
xdg-user-dirs-update
lbu commit

