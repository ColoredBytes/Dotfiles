# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Script to Move Configs into place.

# Target PATH
$PATH = "C:\Users\$env:USERNAME\Documents\PowerShell\"

# Move Files
Move-Item ".\windows\PowerShell\Functions.ps1" "$PATH"
Move-Item ".\windows\PowerShell\Microsoft.PowerShell_profile.ps1" "$PATH"

# Signal that it finished
Write-Output "Successfully moved Files into place."
