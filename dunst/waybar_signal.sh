#!/bin/bash
sleep $(printf "%.0f" $(echo "($DUNST_TIMEOUT/1000)+1" | bc -l))
pkill -RTMIN+1 waybar
