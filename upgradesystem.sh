# if key Error:
# RUN => sudo -i dirmngr < /dev/null
pacman -S archlinux-keyring
pacman-key --refresh-keys 
# upgrade system
pacman -Syu
