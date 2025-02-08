#!/bin/bash
ggoled text "$DUNST_APP_NAME
$DUNST_SUMMARY
$DUNST_BODY"
sleep $(printf "%.0f" $(echo "($DUNST_TIMEOUT/1000)+1" | bc -l))
ggoled clear
pkill -RTMIN+1 waybar
