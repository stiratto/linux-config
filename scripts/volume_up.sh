#!/bin/bash

# get current vol
pactl set-sink-volume @DEFAULT_SINK@ +10%

volume=$(pamixer --get-volume)

if [[ volume -lt 10 ]]; then
   icon=""
elif [[ volume -ge 40 ]]; then
   icon=""
else
   icon=""
fi

# Muestra la notificación con Dunst
dunstify -a "changeVolume" -t 700 -h string:x-dunst-stack-tag:myvolume -h int:value:"$volume" "Volume: $volume% " 2>/tmp/dunst_error.log
