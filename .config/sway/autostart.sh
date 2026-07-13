#!/usr/bin/env fish

/usr/libexec/xdg-desktop-portal-wlr  &
/usr/libexec/polkit-mate-authentication-agent-1  &
swayosd-server  &
waybar &

keepassxc &
/opt/Mullvad\ VPN/mullvad-gui &
nm-applet &
blueman-applet &
steam -silent &
qbittorrent &
