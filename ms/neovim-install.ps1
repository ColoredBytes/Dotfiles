# Author: Joshua Ross
# Purpose: Neovim install script

# Variables
<<<<<<< HEAD
$REPO = "https://github.com/ColoredBytes/NvChad-v2-config.git"
$INSTALL_PATH = "$env:USERPROFILE\.config\"
$PROFILEPATH = $PROFILE.CurrentUserAllHosts
$SETUPCOMMANDS = @' 
# Set up XDG directories and environment variables
if (-not (Test-Path "${ENV:USERPROFILE}\.config")) {
    $null = mkdir "${ENV:USERPROFILE}\.config"
}
$env:XDG_CONFIG_HOME = "${ENV:USERPROFILE}\.config"

if (-not (Test-Path "${ENV:USERPROFILE}\.local\share")) {
    $null = mkdir "${ENV:USERPROFILE}\.local\share"
}
$env:XDG_DATA_HOME = "${ENV:USERPROFILE}\.local\share"

if (-not (Test-Path "${ENV:USERPROFILE}\.local\state")) {
    $null = mkdir "${ENV:USERPROFILE}\.local\state"
}
$env:XDG_STATE_HOME = "${ENV:USERPROFILE}\.local\state"
'@
=======
$REPO = "https://github.com/ColoredBytes/LazyConfig.git"
$INSTALL_PATH = "$env:LOCALAPPDATA\nvim"
>>>>>>> 3fbb431c86ec8917ce23e2a0effcd8f1771c7ff7

# Install dependencies from JSON file
winget import --import-file ".\assets\neovimreq.json"

# Check if Git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "Git is not installed. Please install Git and try again."
    exit 1
}

# Clone git repo
git clone $REPO "$INSTALL_PATH\nvim"

if ($?) {
    Write-Output "Neovim configuration cloned successfully to $INSTALL_PATH"
} else {
    Write-Error "Failed to clone the repository."
}

# Append the setup commands to the profile script
Add-Content -Path $PROFILEPATH -Value $SETUPCOMMANDS

# Load the new profile
. $profilePath