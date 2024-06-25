#!/bin/sh
if pidof "vesktop.bin"; then
    DEST=`busctl --user | grep vesktop.bin | grep -o ":1\.[0-9]*" | uniq`
    for val in $DEST; do
        dbus-send --dest=$val --type=method_call /StatusNotifierItem org.kde.StatusNotifierItem.Activate
    done
else
    /usr/local/bin/Vesktop.AppImage --enable-blink-features=MiddleClickAutoscroll --start-minimized &
fi
