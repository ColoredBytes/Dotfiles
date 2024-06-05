# Used in Profile

# app update function.
function Update {
    param (
        [switch]$posh,
        [switch]$pwsh,
        [switch]$code
    )
    if ($posh) {
        winget upgrade --id XP8K0HKJFRXGCK
    }
    if ($pwsh) {
        winget upgrade --id Microsoft.PowerShell
    }
    if ($code) {
        winget upgrade --id Microsoft.VisualStudioCode  
      }
}

# Function to make a dir and then cd into it.
function Mcd {
    param (
        [string]$dir
    )
    New-Item -ItemType Directory -Path $dir -ErrorAction SilentlyContinue | Out-Null
    Set-Location -Path $dir
}

# Function to list a dir in readonly in NERDTree.
function list {
    param([string]$NewPath = '.')

    if ((Resolve-Path $NewPath).Path.Trim("\") -notlike (Get-Location)) {
        Push-Location $NewPath
    }

    vim -cNERDTree -RM

    if ((Get-Location -Stack).Count) {
        Pop-Location
    }
}

function nvim {
    param (
        [string]$FilePath
    )
    $Command = "wt.exe -p 'PowerShell' nvim.exe"
    $Command +=" '$FilePath'"

    Invoke-Expression $Command
}


