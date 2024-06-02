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
sudo cp -r Dracula /usr/share/themes
sudo cp -r Sweet-Dark-v40 /usr/share/themes

# Install Icons

# Change directory to Flatery directory
cd Flatery

# Run the install script without sudo
./install.sh

# Return to the previous directory
cd ..

# Change directory to McMojave-cursors directory
cd McMojave-cursors

# Run the install script without sudo
./install.sh

# Return to the previous directory
cd ..
