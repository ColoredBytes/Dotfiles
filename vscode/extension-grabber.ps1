# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: VS code Extension Grabber

$PATH = "C:\Toolbox\GitHub\Dotfiles\vscode"

Write-Information "Saving VSCode extensions..."
code --list-extensions > "$PATH\code_extensions"