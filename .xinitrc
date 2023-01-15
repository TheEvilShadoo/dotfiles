#!/bin/sh
# TheEvilShadoo's xinitrc
source ~/.zshenv
gentoo-pipewire-launcher &
pcmanfm --desktop &
nvidia-settings -a "[gpu:0]/GpuPowerMizerMode=1" -a "[gpu:0]/GPUGraphicsClockOffsetAllPerformanceLevels=120" -a "[gpu:0]/GPUMemoryTransferRateOffsetAllPerformanceLevels=1175"
feh --bg-scale ~/pictures/wallpapers/gentoo/dracula.png &
otd &
mpd &
~/.local/bin/statusbar/sb-mpdup &
picom --daemon &
xrdb ~/.Xresources &
steam -silent -noverifyfiles &
ckb-next --background &
discord --start-minimized &
keepassxc &
openrgb --startminimized -p Dracula &
xscreensaver --no-splash &
activate-linux -wd -c .756-.588-.996-1 -H "-75" &
redshift &
exec dbus-launch --sh-syntax --exit-with-session dwm
