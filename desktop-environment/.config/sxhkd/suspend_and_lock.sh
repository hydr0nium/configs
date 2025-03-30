#!/bin/bash

if [ $(grep -r "RUNNING" /proc/asound | wc -l) -eq 0 ]; then
	betterlockscreen -l dimblur -q &
	sleep 0.5 && systemctl suspend-then-hibernate
fi
