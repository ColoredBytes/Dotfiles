# Author: Joshua Ross
# Purpose: Git Config Script

# Variables 
$git_email = Read-Host "Enter your Email"
$git_user = Read-Host "Enter your Username"


git config --global user.name  $git_user
git config --global user.email $git_email
git config --global alias.ac "commit -am"

$config = @'
[core]
	eol = lf
	autocrlf = input
'@

# Add extra config to .gitconfig

Add-Content -Path $HOME\.gitconfig -Value $config

Write-Output echo "Git configuration has been updated."
