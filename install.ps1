# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: ms dotfiles setup script

# Install Winget
powershell.exe -ExecutionPolicy Bypass -File ".\ms\Install-WinGet.ps1"

# Configure Git
powershell.exe -ExecutionPolicy Bypass -File ".\git\git-config.ps1"

# Setup oh-my-posh
powershell.exe -ExecutionPolicy Bypass -File ".\ms\posh-install.ps1"

# Install neovim
powershell.exe -ExecutionPolicy Bypass -File ".\ms\neovim-install.ps1"


