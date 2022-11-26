doas apk add geany ristretto fontconfig msttcorefonts-installer font-opensans font-freefont ttf-droid
doas update-ms-fonts 
doas fc-cache -f
doas apk clean cache
doas lbu include /usr/share/fonts/truetype/msttcorefonts/
doas lbu commit -v
