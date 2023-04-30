#!/bin/bash
notify-send "RECORDING !!"
ffmpeg -f pulse -ac 2 -i default -af acompressor=threshold=0.089:ratio=9:attack=200:release=1000 -t 10 ~/multimedia/audioNotes/note-$(date +%m%d-%H%M%S).mp3 && notify-send "RECORD SAVED!"
