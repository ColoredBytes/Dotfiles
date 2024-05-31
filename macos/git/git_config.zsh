#!/usr/bin/env zsh
# Author: Joshua Ross
# Github: https://github.com/ross-jm
# Purpose: Git config script for macOS using zsh

# Prompt for user input
echo "Enter your Username:"
read -r git_user

echo "Enter your Email:"
read -r git_email

# Set Git user configuration
git config --global user.name "$git_user"
git config --global user.email "$git_email"

# Append core configuration to the global .gitconfig file
cat <<'EOF' >> "$HOME/.gitconfig"
[core]
    eol = lf
    autocrlf = input
EOF

echo "Git configuration has been updated."
