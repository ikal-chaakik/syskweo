#!/bin/bash
bookmarks="duck\nutel\nyoutube\nudemy\nmailbox\namazon\npaypal\nhostinger\nenglish\nspanish\nstack\nreact"
chosen=$(echo -e "$bookmarks" | dmenu -p "select...")
nav=chromium-bin
case "$chosen" in
    react)
        grep $chosen ~/bookmarks | xargs $nav & ;;
    stack)
        grep $chosen ~/bookmarks | xargs $nav & ;;
    spanish)
        grep $chosen ~/bookmarks | xargs $nav & ;;
    english)
        grep $chosen ~/bookmarks | xargs $nav & ;;
    duck)
        grep $chosen ~/bookmarks | xargs $nav & ;;
    hostinger)
	grep $chosen ~/bookmarks | xargs $nav & ;;
    amazon)
	grep $chosen ~/bookmarks | xargs $nav & ;;
    utel)
    	grep $chosen ~/bookmarks | xargs $nav & ;;
    paypal)
     	grep $chosen ~/bookmarks | xargs $nav & ;;
    mailbox)
 	grep $chosen ~/bookmarks | xargs $nav & ;;
    udemy)
     	grep $chosen ~/bookmarks | xargs $nav & ;;
    youtube)
     	grep $chosen ~/bookmarks | xargs $nav & ;;
esac

