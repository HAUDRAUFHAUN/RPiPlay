#!/bin/sh

read -p "Enter the device name: "  devicename
sleep 0.1
echo "You set $devicename as devicename for your receiver!"

sleep 0.5

read -p "Enter your audio output source (hdmi|analog|off): "  audio
sleep 0.1
echo "You set $audio as audio output source for your receiver!"

sleep 0.5

read -p "Enter your image flipping rule (horiz|vert|both): "  imageflipping
sleep 0.1
echo "You set $imageflipping as image flipping rule for your receiver!"

sleep 0.5

read -p "Enter your blackscreen preferences (on|auto|off): "  blackscreen
sleep 0.1
echo "You set $blackscreen as blackscreen preferences for your receiver!"

sleep 0.5

read -p "Do you want to enable debug logging? This will lead to choppy playback due to heavy console output: "  debug
sleep 0.1

if [debug == "y"] 
then
    d=true
elif [debug == "Y"] 
then
    d=true
else
    d=false
fi

if ["$d" = true] 
then
    ./build/rpiplay -n "$devicename" -a "$audio" -f "$imageflipping" -b "$blackscreen" -d
    sleep 0.1
    echo "Your airplay server started succesfully"
else
    ./build/rpiplay -n "$devicename" -a "$audio" -f "$imageflipping" -b "$blackscreen" 
    sleep 0.1
    echo "Your airplay server started succesfully"
fi