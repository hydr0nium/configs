#!/bin/bash

# Define available layouts with friendly names
layouts=("German: de" "Norwegian: no")  # Add your desired layouts here

# Use rofi to select a layout
selected_layout=$(printf "%s\n" "${layouts[@]}" | rofi -dmenu -i -p "Select Keyboard Layout" -only-match)

# Extract the layout code from the selected layout
layout_code=$(echo "$selected_layout" | awk -F':' '{print $2}')

# Change the keyboard layout if a selection was made
if [ -n "$layout_code" ]; then
		setxkbmap "$layout_code" && notify-send "Keyboard layout changed to $selected_layout"
fi
