#!/usr/bin/env zsh
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: oh-my-posh install script for macOS using zsh

# Install oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# Move the config over
mkdir -p "$HOME/.config/oh-my-posh" && cp oh-my-posh/my.blue-owl.omp.json "$HOME/.config/oh-my-posh"

# Add oh-my-posh to PATH in .zshrc
echo 'eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/my.blue-owl.omp.json)"' >> ~/.zshrc

# Update .zshrc
exec zsh
