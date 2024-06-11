# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Env
$omp_config = Join-Path $PSScriptRoot ".\themes\pwsh.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
Invoke-Expression (& { (zoxide init powershell | Out-String) }) 
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# Alias
Set-Alias -Name vim -Value nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr

# Utilities
. "$env:USERPROFILE\.config\powershell\functions.ps1"