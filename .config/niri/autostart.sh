#!/usr/bin/env bash

/usr/lib/xdg-desktop-portal-gnome &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
wlsunset.sh &
swaybg -i ~/.config/wallpaper &
 
xwayland-satellite &
swaync &
swayosd-server &
 
waybar &

sleep 2
 
keepassxc &
mullvad-vpn &
nm-applet &
blueman-applet &
steam -silent &
qbittorrent &
