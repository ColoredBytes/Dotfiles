# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: 

# Variables
$POSH_THEME = "https://github.com/ColoredBytes/Dotfiles/blob/4668e84e5f059172b6aecbd73a74ba6a37809f3d/assets/my.blue-owl.omp.json"
$LOCATION = "C:\Users\rossj25\.config\oh-my-posh\themes"
$COMMAND_VAR = '$env:POSH_THEMES_PATH="C:\Users\rossj25\.config\oh-my-posh\themes"'
$INIT_COMMAND = 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\my.blue-owl.omp.json" | Invoke-Expression'

# Create directory if it does not exist
if (-Not (Test-Path -Path $LOCATION)) {
    New-Item -ItemType Directory -Path $LOCATION
}

# Install oh-my-posh
winget install JanDeDobbeleer.OhMyPosh -s winget

# Download theme to .config folder
Invoke-WebRequest -Uri $POSH_THEME -OutFile "$LOCATION\my.blue-owl.omp.json"

# Add $COMMAND_VAR and $INIT_COMMAND to $PROFILE.CurrentUserAllHosts
$profilePath = $PROFILE.CurrentUserAllHosts
$profileContent = if (Test-Path -Path $profilePath) { Get-Content -Path $profilePath } else { @() }

if (-not ($profileContent -contains $COMMAND_VAR)) {
    Add-Content -Path $profilePath -Value $COMMAND_VAR
}

if (-not ($profileContent -contains $INIT_COMMAND)) {
    Add-Content -Path $profilePath -Value $INIT_COMMAND
}

# Load the new profile
. $profilePath





