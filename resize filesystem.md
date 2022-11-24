FS

https://www.looklinux.com/how-to-resize-tmpfs-on-linux/
mount -o remount,size=6G,noexec,nosuid,nodev,noatime /

edit ftab

add

tmpfs   /dev/shm        tmpfs   size=2.5G,noexec,nosuid,nodev,noatime     0 0
