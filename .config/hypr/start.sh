#!/usr/bin/env bash

# initialize wallpaper daemon
swww init & 
# setting wallpaper
swww img ~/Downloads/nixos-artwork-master/wallpapers/nix-wallpaper-nineish-dark-gray.png &

#  install as pkgs.networkmanagerapplet
# nm-applet --indicator &

# probably duplicate
# waybar & 

# or dunst but install it first
# mako
