#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Pop!_OS Rice Script

update() {
    sudo apt update
    sudo apt upgrade -y
}

# Update The System
update

# Install Gnome Tweaks
sudo apt install gome-tweaks

# Copy Over themes
cp -r Dracula /usr/share/themes
cp -r Sweet-Dark-v40 /usr/share/themes

# Install Icons
sudo ./Flatery/install.sh
sudo ./McMojave-cursors/install.sh

# Reboot the system
sudo reboot
