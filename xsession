if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
    echo "Starting dbus-launch"
    eval `dbus-launch --sh-syntax --exit-with-x11`
fi

export LANG=en_US.UTF-8
#setxkbmap gb
setxkbmap 'gb(mac)'
xsetroot -solid darkgreen
xrdb -merge ~/.Xresources
xrandr --dpi 96

exec i3
