#!/usr/bin/env bash

# Check for -g flag
group=""
if [[ "$1" = "-g" ]]; then
    group=1
    shift  # Remove the -g argument
fi

# After optional -g, expect exactly 2 arguments
if [[ $# -ne 2 ]]; then
    echo 'Wrong number of arguments. Usage: ./wsaction.sh [-g] <dispatcher> <workspace>'
    exit 1
fi

active_ws=$(hyprctl activeworkspace -j | jq -r '.id')

if [[ -n "$group" ]]; then
    # Move to group: (workspace-1)*10 + (active_ws % 10)
    hyprctl dispatch "$1" $(( (($2 - 1) * 10) + (active_ws % 10) ))
else
    # Move to workspace in group: floor((active_ws-1)/10)*10 + workspace
    hyprctl dispatch "$1" $(( ((active_ws - 1) / 10) * 10 + $2 ))
fi
