#!/bin/sh
if pidof "Discord"; then
    DEST=`busctl --user | grep Discord | grep -o ":1\.[0-9]*" | uniq`
    for val in $DEST; do
        dbus-send --dest=$val --type=method_call /StatusNotifierItem org.kde.StatusNotifierItem.Activate
    done
else
    discord --enable-blink-features=MiddleClickAutoscroll --start-minimized &
fi

hyprctl dispatch workspace 5
