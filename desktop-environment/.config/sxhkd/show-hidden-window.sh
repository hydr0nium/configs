#!/bin/sh
# show-hidden.sh — pick a hidden bspwm window, move it to current desktop, and restore it

menu=""
for node in $(bspc query -N -n .hidden); do
    title=$(xdotool getwindowname "$node" 2>/dev/null)
    [ -z "$title" ] && title="(untitled window)"
    menu="${menu}${title}\t${node}\n"
done

if [ -z "$menu" ]; then
    notify-send "No hidden windows" 2>/dev/null
    exit 0
fi

chosen=$(printf "%b" "$menu" | cut -f1 | rofi -dmenu -p "Show window:")

[ -z "$chosen" ] && exit 0

node_id=$(printf "%b" "$menu" | awk -F'\t' -v t="$chosen" '$1==t {print $2; exit}')

if [ -n "$node_id" ]; then
    current_desktop=$(bspc query -D -d focused)
    bspc node "$node_id" -d "$current_desktop" --follow
    bspc node "$node_id" -g hidden=off
    bspc node -f "$node_id"
fi
