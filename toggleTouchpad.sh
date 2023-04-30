#!/bin/bash
# Turn off and on the touchpad via xinput 

ID="$(xinput list | grep -Eo 'Touchpad.*id=[0-9]*' | sed 's/Touchpad//g' | sed 's/id=//g')"
STATUS="$(echo $ID | xargs -I % xinput list-props % | grep 'Device Enabled' | grep -Eo ':.*[0|1]' | sed 's/://g')"

if [ "$STATUS" -eq "1" ]; 
	then 
	xinput set-prop $ID "Device Enabled" 0 && notify-send "* * * * Touchpad DISABLED!!" 
else
	xinput set-prop $ID "Device Enabled" 1 && notify-send "* * * * Touchpad ENABLED!!"
fi

