#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Pop!_OS Rice Script

# Variables
CHANGE_DIR="cd ../.."

update() {
    sudo apt update
    sudo apt upgrade -y
}

# Update The System
update

# Install Gnome Tweaks
sudo apt install gnome-tweaks -y

# Copy Over themes
sudo cp -r pop-os/Dracula /usr/share/themes
sudo cp -r pop-os/Sweet-Dark-v40 /usr/share/themes

# Install Icons

# Change directory to Flatery directory
cd pop-os/Flatery

# Run the install script without sudo
./install.sh

# Return to the previous directory
$CHANGE_DIR

# Change directory to McMojave-cursors directory
cd pop-os/McMojave-cursors

# Run the install script without sudo
./install.sh

# Return to the previous directory
$CHANGE_DIR
