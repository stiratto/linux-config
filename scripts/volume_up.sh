#!/bin/bash

# Obtiene el volumen actual

pactl set-sink-volume @DEFAULT_SINK@ +10%

volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -n 1)
# Muestra la notificación con Dunst
dunstify -a "changeVolume" -t 700 -u low -i audio-volume-high -h string:x-dunst-stack-tag:myvolume "Volume: $volume" 2>/tmp/dunst_error.log
