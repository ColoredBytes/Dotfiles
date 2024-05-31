# path variables
$env:POSH_THEMES_PATH = "C:\Users\rossj\.config\oh-my-posh\themes"

# oh-my-posh prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\my.blue-owl.omp.json" | Invoke-Expression 

# zoxide variable
# Invoke-Expression (& { (zoxide init powershell | Out-String) }) 

# Modules
# Import-Module Terminal-Icons

# Aliases
# Set-Alias -Name zz -Value z
# Set-Alias -Name vim -Value nvim
# Functions
# . "C:\Users\rossj\Documents\PowerShell\Functions.ps1"
