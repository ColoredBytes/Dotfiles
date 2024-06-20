#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: VS code Extension Grabber

# Path where to drop file.
PATH=""

# Do the Needful
echo "Saving VSCode extensions..."
code --list-extensions > "$PATH"/code_extensions