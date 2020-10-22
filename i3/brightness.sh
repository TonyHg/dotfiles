#!/bin/bash

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

function get_brightness {
    xbacklight -get
}

case $1 in
    up)
        xbacklight +5
        ;;
    down)
        xbacklight -5
        ;;
esac
