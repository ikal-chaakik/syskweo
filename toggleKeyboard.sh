#!/bin/bash
# toggle the keyboard layout between latam, us an colemak variant
# Dependencies: dunst, setxkbmap, * dmenu, sxhkd (for keybindigs)

lay="$(setxkbmap -query | awk '/layout: / {print $2}')"

if [ "$lay" == "us" ]; then
    setxkbmap -layout latam && notify-send "* * * * USING latam!!"
else
	setxkbmap -layout us  && notify-send  "* * * * USING us!!"
fi    
