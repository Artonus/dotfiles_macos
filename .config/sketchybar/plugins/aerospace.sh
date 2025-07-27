#!/usr/bin/env bash
# Make sure it's executable: chmod +x ~/.config/sketchybar/plugins/aerospace.sh

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME background.drawing=on
else
    sketchybar --set $NAME background.drawing=off
fi
