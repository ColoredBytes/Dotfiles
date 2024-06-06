# Author: Joshua Ross
# Purpose: Neovim install script

# Variables
$REPO = "https://github.com/ColoredBytes/NvChad-v2-config.git"
$INSTALL_PATH = "$env:LOCALAPPDATA\nvim"

# Install dependencies from JSON file
winget import --import-file ".\assets\neovimreq.json"

# Check if Git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git is not installed. Please install Git and try again."
    exit 1
}

# Clone Git repository
if (Test-Path $INSTALL_PATH) {
    Write-Output "Removing existing installation at $INSTALL_PATH"
    Remove-Item -Recurse -Force $INSTALL_PATH
}

git clone $REPO $INSTALL_PATH

if ($?) {
    Write-Output "Neovim configuration cloned successfully to $INSTALL_PATH"
} else {
    Write-Error "Failed to clone the repository."
}