#!/usr/bin/env bash

#this wont work for some reason
#killall waybar

if pidof waybar >/dev/null; then
	pkill waybar
fi

waybar -c ~/.dots/home-manager/hyprland/waybar/config -s ~/.dots/home-manager/hyprland/waybar/style.css

