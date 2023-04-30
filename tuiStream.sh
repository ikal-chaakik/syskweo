#!/bin/bash

function wcam (){
echo "opening webcam"
mpv --profile=low-latency --untimed /dev/video0 &>/dev/null & 
dots="..."
for i in {1..3}
    do
	echo $dots
	sleep 0.5
    done
}

function cutVid (){
while true
do
echo "q) to quit p) play video"
echo "insert <start> <duration> <output file>"
read string
array=($string)

case "$array" in
    "q")
    break ;;
    "")
    break ;;
    "p")
     toPlay=$(fzf) ; mpv $toPlay && break ;;
esac

echo "input file name"
toInput=$(fzf)
ffmpeg -ss ${array[0]} -i $toInput -to ${array[1]} -c:v copy -c:a copy ${array[2]}
done
}

function stream (){
echo "Name your file"
read name
ffmpeg -y -f x11grab -thread_queue_size 512 -s 1366x768 -i :0.0 -f pulse -ac 1 -i default -filter:a volume=15db -af acompressor=threshold=0.89:ratio=9:attack=200:release=1000 "$name.mp4"
}

mainMenu=1
clear
while [ $mainMenu = 1 ]
do
clear
echo "s) stream  w) webcam c) cutVideo q) quit"
read answ
    case "$answ" in
	"s")
	    stream ;;
	"w")
	    wcam ;;
	"c")
	    cutVid ;;
	"q")
	    echo "bye..." && break ;;
    esac
done
