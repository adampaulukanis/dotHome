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
xrandr --dpi 96
#xrandr --output HDMI-1 --same-as VGA-1
xidle -delay 1 -nw -program "/usr/X11R6/bin/xlock -mode bat" -timeout 600 &

#xlock -mode random -inroot      # Ciekawe ile core dump -ów będę miał.

exec i3
