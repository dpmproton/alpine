doas apk add geany ristretto firefox libreoffice libreoffice-lang-es fontconfig msttcorefonts-installer
doas update-ms-fonts
doas fc-cache -f
doas apk clean cache
doas lbu include /usr/share/fonts/truetype/msttcorefonts/
doas lbu commit -v

