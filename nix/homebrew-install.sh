#!/usr/bin/env bash
# Author: Joshua Ross
# Purpose: homebrew install script

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add to to path
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Homebrew's dependencies if you have sudo access:
sudo apt install build-essential

# update .bashrc
exec bash

# install gcc
brew install gcc


