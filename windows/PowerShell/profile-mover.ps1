# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: Script to Move Configs into place.

# Target Path
$path = "C:\Users\$env:USERNAME\Documents\PowerShell\"

# Move Files
Move-Item ".\windows\PowerShell\Functions.ps1" "$path"
Move-Item ".\windows\PowerShell\Microsoft.PowerShell_profile.ps1" "$path"

# Signal that it finished
Write-Output "Successfully moved Files into place."
