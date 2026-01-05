#!/usr/bin/env bash

#xwaylandvideobridge --qwindowtitle xwlvb &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xdg-desktop-portal-hyprland &

wlsunset.sh &

swaybg -i ~/.config/wallpaper &
waybar &
swaync &
swayosd-server &

sleep 2

keepassxc &
mullvad-vpn &
qbittorrent &
nm-applet &
blueman-applet &
steam -silent &
