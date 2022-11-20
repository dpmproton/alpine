setup-xorg-base xf86-video-amdgpu
apk add mate-desktop-environment dbus dbus-x11 lxdm adwaita-icon-theme faenza-icon-theme
gvfs_pkgs=$(apk search gvfs -q | grep -v '\-dev' | grep -v '\-lang' | grep -v '\-doc')
apk add $gvfs_pkgs
ttfs=$(apk search -q ttf- | grep -v '\-doc')
apk add $ttfs
rc-update add dbus
rc-update add lxdm
rc-service dbus start
rc-service lxdm start
