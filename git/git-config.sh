#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Git config script

# Prompt for user input
echo "Enter your Name:"
read -r git_user

echo "Enter your Email:"
read -r git_email

# Set Git user configuration
git config --global user.name "$git_user"
git config --global user.email "$git_email"

# Set Git Aliases
git config --global alias.a "add"
git config --global alias.cl "clone"
git config --global alias.pl "pull"
git config --global alias.ph "push"
git config --global alias.s "status"
git config --global alias.ac "commit -am"
git config --global alias.co "checkout"
git config --global alias.cob "checkout -b"


# Set Git Core
git config --global core.eol lf
git config --global core.autocrlf input


echo "Git configuration has been updated."
