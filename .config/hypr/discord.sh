#!/bin/sh
if pidof "vesktop"; then
    DEST=`busctl --user | grep vesktop | grep -o ":1\.[0-9]*" | uniq`
    for val in $DEST; do
        dbus-send --dest=$val --type=method_call /StatusNotifierItem org.kde.StatusNotifierItem.Activate
    done
else
    vesktop-bin --enable-blink-features=MiddleClickAutoscroll --start-minimized --enable-features=WaylandWindowDecorations --ozone-platform-hint=auto
    DEST=`busctl --user | grep vesktop | grep -o ":1\.[0-9]*" | uniq`
    for val in $DEST; do
        dbus-send --dest=$val --type=method_call /StatusNotifierItem org.kde.StatusNotifierItem.Activate
    done
fi
