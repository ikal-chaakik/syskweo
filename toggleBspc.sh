#!/bin/bash
# Toggle bspwm layout
opts="\nwide\ntiled"
chosen=$(echo -e "$opts" | dmenu -p "select...")

case "$chosen" in
	wide)
	bsp-layout set wide ;;
	tiled)
	bsp-layout set tiled ;;
esac

