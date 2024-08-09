#!/bin/bash

# waybartoggle script

# # Check if waybar-disabled file exists
# if [ -f $HOME/.cache/waybar-disabled ]; then
# 	killall waybar
# 	pkill waybar
# 	exit 1
# fi

# Check if waybar-disabled file exists
if [ -f $HOME/.cache/waybar-disabled ]; then
	rm $HOME/.cache/waybar-disabled
	/home/alan/dotfiles/waybar/launch.sh
else
	echo " " >$HOME/.cache/waybar-disabled
	killall waybar
	pkill waybar
	exit 1
fi
