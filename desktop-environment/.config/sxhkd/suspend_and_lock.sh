#!/bin/bash

betterlockscreen -l dimblur -q &
sleep 0.5 && systemctl suspend-then-hibernate
