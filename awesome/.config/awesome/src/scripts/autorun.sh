#!/usr/bin/env bash

## run (only once) processes which spawn with the same name
function run {
   if (command -v $1 && ! pgrep $1); then
     $@&
   fi
}

## run (only once) processes which spawn with different name
if (command -v gnome-keyring-daemon && ! pgrep gnome-keyring-d); then
    gnome-keyring-daemon --daemonize --login &
fi
if (command -v start-pulseaudio-x11 && ! pgrep pulseaudio); then
    start-pulseaudio-x11 &
fi
if (command -v /usr/lib/mate-polkit/polkit-mate-authentication-agent-1 && ! pgrep polkit-mate-aut) ; then
    /usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
fi
if (command -v  xfce4-power-manager && ! pgrep xfce4-power-man) ; then
    xfce4-power-manager &
fi
# System-config-printer-applet is not installed in minimal edition
if (command -v system-config-printer-applet && ! pgrep applet.py ); then
  system-config-printer-applet &
fi

run xfsettingsd
run nm-applet
run light-locker
run xcape -e 'Super_L=Super_L|Control_L|Escape'
run thunar --daemon
run pa-applet
run pamac-tray
run picom --experimental-backends # --log-level "DEBUG" --log-file ~/picom.log # --config ~/.config/picom/picom.conf &
run nitrogen --set-zoom-fill /home/adri/Wallpapers/waves.jpg
run xrandr --output eDP-1 --mode 1680x1050
