#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
#start smart common input method
export LC_CTYPE="zh_CN.UTF-8"
#export XMODIFIERS=@im=SCIM
#export XIM="SCIM"
#export XINPUT="xim"
#export XIM_PROGRAM="scim -d"
#export GTK_IM_MODULE="scim"
#export QT_IM_MODULE="scim"
#scim -d &

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
fcitx -d &
#Configure Multi Display
#xrandr --output eDP --mode 1366x768 --output VGA-0 --mode 1920x1080 --left-of eDP
## Configure Eth0 IP
ifconfig enp2s0 192.168.0.14
echo "1" > /proc/sys/net/ipv4/ip_forward
#start windows manager desktop
awesome

#xrandr --output VGA-0 --mode 1920x1080 --left-of eDP


#twm &
#xclock -geometry 50x50-1+1 &
#xterm -geometry 80x50+494+51 &
#xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login
