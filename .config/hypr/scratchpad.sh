#!/bin/sh
if [[ -n $(hyprctl -j workspaces|jq '.[].name | select(.=="special:foot")') ]]; then
    hyprctl dispatch togglespecialworkspace foot
else
    hyprctl dispatch exec [ workspace special:foot ] foot
fi
