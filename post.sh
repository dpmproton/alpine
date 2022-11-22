apk add geany ristretto firefox libreoffice libreoffice-lang-es fontconfig msttcorefonts-installer
update-ms-fonts
fc-cache -f
apk clean cache
lbu commit -v

