#!/bin/bash

xset s off
xset -dpms
xset s noblank

xrandr -s 1920x1080 -r 100

run() {
  if ! pgrep -f "$1" ;
  then
    nohup "$@" &
  fi
}

run picom
run xwallpaper --zoom ~/.config/wallpaper

run qbittorrent
run nm-applet
run volumeicon
run blueman-applet
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 

exit
