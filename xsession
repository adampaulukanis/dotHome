if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
    echo "Starting dbus-launch"
    eval `dbus-launch --sh-syntax --exit-with-x11`
fi

export LANG=en_US.UTF-8
#setxkbmap 'gb(mac)'
#setxkbmap gb
setxkbmap -layout "gb,pl,gb(mac)"
setxkbmap -option 'grp:ctrl_alt_toggle'

xsetroot -solid darkgreen
xrdb -merge ~/.Xresources

# first check the output of xrandr or xrandr --listmonitors
xrandr --dpi 96
xrandr --output LVDS-1 --right-of HDMI-1
#xrandr --output HDMI-1 --primary
#xrandr --output HDMI-1 --same-as VGA-1
#xrandr --output HDMI-1 --auto
xidle -delay 1 -nw -program "/usr/X11R6/bin/xlock -mode bat" -timeout 1200 &

#xlock -mode random -inroot      # Ciekawe ile core dump -ów będę miał.

xset -dpms

# change blank time to 1 hour
xset s 3600 3600

# turn on numlockx
if [ -x /usr/local/bin/numlockx ]; then
    echo "NumLock is ON"
    numlockx
fi

exec i3
