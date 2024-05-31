
# <div align="center">💤 Jersh's Dotfiles</div>

# :link: Table of Contents
1. [Instructions](#instructions)
2. [:bookmark\_tabs: Contents](#bookmark_tabs-contents)
   1. [Linux](#linux)
   2. [MacOS](#macos)
   3. [Windows](#windows)

## Instructions

- Clone the repo.
```
git clone https://github.com/ColoredBytes/Dotfiles.git
```
- Make scripts Executable
```
find /Dotfiles -type f -name "*.sh" -exec chmod +x {} \;
find /Dotfiles -type f -name "*.zsh" -exec chmod +x {} \;
```



 ## :bookmark_tabs: Contents

### [Linux](/linux/)
- [Git Config](/linux/git/git_config.sh)  
  - Tiny script to easily set up `.gitconfig` file.
- [Homebrew Install](/linux/shell/homebrew-install.sh)  
  - Script to install Homebrew and added the `PATH`to `.bashrc`
- [Neovim Installer](/linux/neovim/neovim-install.sh)  
  - Script to install NeoVim and copy over the NvChad config.
- [Oh-My-Posh Installer](/linux/shell/oh-my-posh-install.sh)  
  - Script to install oh-my-posh and move over the config for it.

### [MacOS](/macos/)
- [Git Config](/macos/git/git_config.zsh)  
  - Tiny script to easily set up `.gitconfig` file.
- [Neovim Installer](/macos/neovim/neovim-install.zsh)  
  - Script to install NeoVim and copy over the NvChad config.
- [Homebrew Install](/macos/shell/homebrew-install.zsh)  
  - Script to install Homebrew and add the `PATH`to `.zshrc`.
- [Oh-My-Posh Installer](/macos/shell/oh-my-posh-install.zsh)  
  - Script to install oh-my-posh and move over the config for it.

### [Windows](/windows/)
- [Git Config](/windows/Git/git_config.ps1)  
  - Tiny script to easily set up `.gitconfig` file.
- [Functions](/windows/PowerShell/Functions.ps1)  
  - Functions for Windows.
- [PowerShell Profile](/windows/PowerShell/Microsoft.PowerShell_profile.ps1)  
  - Windows Powershell Profile, That I use.
- [Neovim Install](/windows/Neovim/neovim-install.ps1)
  - Neovim installs script for Windows using winget.
  

