#!/usr/bin/env bash

run() {
  if ! pgrep -f "$1" ;
  then
    "$@" &
    disown
  fi
}

# Set monitor
xrandr -s 1920x1080 -r 100

# Stop automatic lock/monitor off
xset s off
xset -dpms
xset s noblank

# Fix cursor on wallpaper
xsetroot -cursor_name left_ptr

# Fix mouse and keyboard
setxkbmap -option caps:swapescape

xinput set-prop "pointer:""Logitech USB Receiver Mouse" "libinput Accel Speed" 0
xinput set-prop "pointer:""Logitech USB Receiver Mouse" "libinput Accel Profile Enabled" 0, 1, 0


# Autostart programs
run /usr/lib/polkit-kde-authentication-agent-1

run picom
run feh --no-fehbg --bg-fill ~/.config/wallpaper

run nm-applet
run blueman-applet
run volumeicon
run qbittorrent
run steam

exit
