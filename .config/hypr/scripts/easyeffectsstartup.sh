#!/bin/sh
if ! pgrep -f /usr/bin/easyeffects; then
    exec /usr/bin/easyeffects --gapplication-service &
else
    /usr/bin/easyeffects
fi
