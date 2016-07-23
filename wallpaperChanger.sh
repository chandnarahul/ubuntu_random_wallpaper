#!/bin/bash

wallpaperDirectory=Pictures/wallpapers/

randomWallpapers=file://$(find ${HOME}/$wallpaperDirectory -type f | shuf -n1)

# export DBUS_SESSION_BUS_ADDRESS environment variable
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)

gsettings set org.gnome.desktop.background picture-uri "$randomWallpapers"
