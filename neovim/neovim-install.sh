#!/bin/env bash
# Author: Joshua Ross
# Purpose: Neovim Install Script

# Variables
REPO="https://github.com/ColoredBytes/LazyConfig.git"


# Function to install packages using homebrew
install_packages() {
	# Loop through each package name and install it
	for package in "$@"; do
		brew install "$package" || {
			echo "Failed to install $package"
			exit 1
		}
	done
}

# List of packages to install
packages=(
	git
	ripgrep
	fd
	zig
	neovim
)

# tap homebew to get updated lazygit
brew install jesseduffield/lazygit/lazygit

# Install required packages
install_packages "${packages[@]}" || {
	echo "Failed to install required packages"
	exit 1
}

# Clone Git REPO for imported Lazvy.Vim Config
git clone $REPO ~/.config/nvim || {
	echo "Failed to clone nvim REPOsitory"
	exit 1
}

# Verify if the clone operation was successful
if [ -d ~/.config/nvim/.git ]; then
	# Remove the .git folder, so you can add it to your own REPO later
	rm -rf ~/.config/nvim/.git || {
		echo "Failed to remove .git folder"
		exit 1
	}
else
	echo "Cloning nvim REPOsitory failed"
	exit 1
fi

# Job's Done
echo "neovim has been installed..."