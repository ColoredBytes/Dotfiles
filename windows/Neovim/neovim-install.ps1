# Author: Joshua Ross
# Purpose: Neovim install script.

# Variables
$repo = "https://github.com/ColoredBytes/NvChad-v2-config.git"
$path = "$env:LOCALAPPDATA\nvim"

# Install dependencies
winget import neovimreq.json

# Clone Git Repo 
git clone $repo $path


