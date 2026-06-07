#!/bin/bash

entries=" Logout\n Lock\n Reboot\n⏻ Shutdown"

selected=$(echo -e $entries|rofi -theme-str "window {width: 220px; height: 250px;}" -dmenu --cache-file /dev/null | awk '{print tolower($2)}')

case $selected in
  logout)
    killall wireplumber pipewire; hyprctl dispatch exit;;
  lock)
    sleep 1; ~/.config/swaylock/config.sh;;
  reboot)
    doas reboot;;
  shutdown)
    doas poweroff;;
esac
