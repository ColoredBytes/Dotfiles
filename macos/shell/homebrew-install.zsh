#!/usr/bin/env zsh
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Homebrew install script for macOS using zsh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to the PATH in .zshrc
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zshrc
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update .zshrc
exec zsh

# Install gcc using Homebrew
brew install gcc
