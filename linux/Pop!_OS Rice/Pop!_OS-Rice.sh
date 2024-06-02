#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Pop!_OS Rice Script

# Copy Over themes
cp -r Dracula /usr/share/themes
cp -r Sweet-Dark-v40 /usr/share/themes

# Install Icons
sudo ./Flatery/install.sh
sudo ./McMojave-cursors/install.sh