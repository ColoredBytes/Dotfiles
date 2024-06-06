#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: nix dotfiles setup script

# Configure Git
bash git-config/git-config.sh

# Install homebrew
bash nix/homebrew-install.sh


# Setup oh-my-posh
bash nix/oh-my-posh-install.sh

# Install neovim
bash nix/neovim-install.sh


