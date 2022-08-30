#!/bin/sh
# TheEvilShadoo's xinitrc
source ~/.zshenv
(sleep .1 && pcmanfm --desktop) &
killall pipewire; dbus-launch gentoo-pipewire-launcher &
nvidia-settings -a "[gpu:0]/GpuPowerMizerMode=1" -a "[gpu:0]/GPUGraphicsClockOffsetAllPerformanceLevels=120" -a "[gpu:0]/GPUMemoryTransferRateOffsetAllPerformanceLevels=1175"
feh --bg-scale ~/images/wallpapers/gentoo/dracula.png &
mpd &
~/.local/bin/statusbar/sb-mpdup &
xrdb ~/.Xdefaults &
picom --daemon --experimental-backends
steam -silent -noverifyfiles &
ckb-next --background &
discord --start-minimized &
xscreensaver --no-splash &
activate-linux -wd -c .756-.588-.996-1 &
redshift &
exec dwm
