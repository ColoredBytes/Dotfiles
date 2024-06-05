# Author: Joshua Ross
# Purpose: Neovim install script.

# Variables
$repo = "https://github.com/ColoredBytes/NvChad-v2-config.git"
$path = "$env:LOCALAPPDATA\nvim"

# Install dependencies
$packages = @(
    "BurntSushi.ripgrep.MSVC",
    "sharkdp.fd",
    "JesseDuffield.lazygit",
    "Neovim.Neovim",
    "zig.zig"
)

# Loop through the array and install each package
foreach ($package in $packages) {
    winget install $package -e
}

# Clone Git Repo 
git clone $repo $path