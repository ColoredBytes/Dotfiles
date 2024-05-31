#!/usr/bin/env bash
# Author: Joshua Ross
# Purpose: oh-my-posh install script

# install oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# move the config over 
mkdir -p "$HOME/.config/oh-my-posh" && cp oh-my-posh/my.blue-owl.omp.json "$HOME/.config/oh-my-posh"

# add oh-my-posh to PATH
echo 'eval "$(oh-my-posh init bash --config /home/$USER/.config/oh-my-posh/my.blue-owl.omp.json)"' >> ~/.bashrc