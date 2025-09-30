#!/bin/bash

fullscreen="$(xwininfo -root | grep geometry)"
current_win="$(xwininfo -id $(xdotool getactivewindow) | grep geometry)"
if [ $(grep -r "RUNNING" /proc/asound | wc -l) -eq 0 ] && [ "$current_win" != "$fullscreen" ]; then
  xautolock -locknow 
fi
