#!/bin/bash
catpipe=~/.xmonad/catfifo
if [ $1 = "start" ]; then
    if ! [ -e "$catpipe" ]; then
	mkfifo $catpipe
    fi
    oneko -tofocus -speed 50 -fg green -bg black &
    process=$!
    echo $process>$catpipe &
elif [ $1 = "stop" ]; then
    if [ -e "$catpipe" ]; then
	cat $catpipe | xargs kill
	rm $catpipe
	xsetroot -cursor_name left_ptr
    fi
fi

