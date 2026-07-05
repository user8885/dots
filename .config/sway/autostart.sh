#!/usr/bin/env fish

/usr/libexec/xdg-desktop-portal-wlr &
/usr/libexec/polkit-mate-authentication-agent-1 &

#wlsunset.sh &
swaybg -i ~/.config/wallpaper &
 
#swaync &
swayosd-server &
 
waybar &

sleep 2
 
keepassxc &
/opt/Mullvad\ VPN/mullvad-gui &
nm-applet &
blueman-applet &
steam -silent &
qbittorrent &
