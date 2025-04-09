if [ -x /usr/local/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
    echo "Starting dbus-launch"
    eval `dbus-launch --sh-syntax --exit-with-x11`
fi

#{ set keyboard
export LANG=en_US.UTF-8
#setxkbmap 'gb(mac)'
#setxkbmap gb
#setxkbmap -layout "gb,pl,gb(mac)"
setxkbmap -layout "gb,pl,ru"
setxkbmap -option 'grp:ctrl_alt_toggle'
#}

xsetroot -solid darkgreen
xrdb -merge ~/.Xresources

# first check the output of xrandr or xrandr --listmonitors

#{ setting for my optiplex
#xrandr --output DisplayPort-0 --mode 1920x1080
#xrandr --dpi 70
#}

#{ setting for my macbook
#xrandr --output HDMI-1 --primary
#xrandr --output HDMI-1 --same-as VGA-1
#xrandr --output HDMI-1 --auto
#}

xidle -delay 1 -nw -program "/usr/X11R6/bin/xlock -mode bat" -timeout 1200 &

#xlock -mode random -inroot      # Ciekawe ile core dump-ów będę miał.

xset -dpms

# change blank time to 1 hour
xset s 3600 3600

#{ turn on numlockx
if [ -x /usr/local/bin/numlockx ]; then
    echo "NumLock is ON"
    numlockx
fi
#}

#{ set a random wallpaper
if [ -x /usr/local/bin/feh ] ; then
    if [ -d ~/wallpapers ] ; then
        set +A wallpapers ~/wallpapers/*.{png,jpg}
        N=${#wallpapers[@]}     # number of members in the array
        ((N=RANDOM%N))          # choose one random wallpaper
        feh --bg-max ${files[$N]}
    fi
fi
#}

exec i3
