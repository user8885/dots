#!/usr/bin/env fish

xwaylandvideobridge --qwindowtitle xwlvb &
/usr/libexec/xdg-desktop-portal-hyprland &
/usr/libexec/polkit-mate-authentication-agent-1 &

#wlsunset-wrapper &

swaybg -i ~/.config/wallpaper &
waybar &
swaync &
swayosd-server &

sleep 2

"/opt/Mullvad VPN/mullvad-vpn" &
keepassxc &
#nm-applet &
#blueman-applet &
steam -silent &

disown
exit
