# Author: Joshua Ross
# Purpose: Git Config Script

# Variables 
$git_email = Read-Host "Enter your Email"
$git_user = Read-Host "Enter your Username"


# Set Git user configuration
git config --global user.name "$git_user"
git config --global user.email "$git_email"

# Set Git Aliases
git config --global alias.ac "commit -am"
git config --global alias.cl "clone"

# Set Git Core
git config --global core.eol lf
git config --global core.autocrlf input

Write-Output "Git configuration has been updated."
