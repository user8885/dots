#!/usr/bin/env bash

run() {
  if ! pgrep -f "$1" ;
  then
    "$@" &
  fi
}

xrandr -s 1920x1080 -r 100
xset s off
xset -dpms
xset s noblank

run picom
run xwallpaper --zoom ~/.cache/wallpaper
run volumeicon
run nm-applet
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run qbittorrent


disown

exit
