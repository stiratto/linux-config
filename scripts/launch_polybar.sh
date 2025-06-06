#!/bin/bash

echo $DISPLAY
export DISPLAY=:0

killall polybar

# Terminate already running bar instances
# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar top 2>&1 | tee -a /tmp/polybar.log & disown
