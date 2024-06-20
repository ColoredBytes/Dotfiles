# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: VS code Extension Grabber

$PATH = ""

Write-Information "Saving VSCode extensions..."
code --list-extensions > "$PATH\code_extensions"