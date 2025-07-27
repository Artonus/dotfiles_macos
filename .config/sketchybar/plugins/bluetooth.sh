#!/usr/bin/env bash

# Check if Bluetooth is on
if ! blueutil -p | grep -q "1"; then
    sketchybar --set $NAME \
        icon="󰂲" \
        icon.color="0xff6e738d" \
        label=""
    exit 0
fi

# Count connected devices
connected_count=$(blueutil --connected | wc -l | tr -d ' ')

if [ "$connected_count" -gt 0 ]; then
    sketchybar --set $NAME \
        icon="󰂱" \
        icon.color="0xff91d7e3" \
        label="$connected_count"
else
    sketchybar --set $NAME \
        icon="󰂯" \
        icon.color="0xff91d7e3" \
        label=""
fi
