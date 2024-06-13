# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: VSCode extensions

$extensions = @(
    'aaron-bond.better-comments',
    'adpyke.codesnap',
    'equinusocio.vsc-material-theme-icons',
    'esbenp.prettier-vscode',
    'github.remotehub',
    'github.vscode-github-actions',
    'hashicorp.terraform',
    'mark-wiemer.vscode-autohotkey-plus-plus',
    'ms-python.debugpy',
    'ms-python.python',
    'ms-python.vscode-pylance',
    'ms-vscode-remote.remote-ssh',
    'ms-vscode-remote.remote-ssh-edit',
    'ms-vscode.powershell',
    'ms-vscode.remote-explorer',
    'ms-vscode.remote-repositories',
    'rogalmic.bash-debug',
    'teabyii.ayu',
    'timonwong.shellcheck',
    'yzhang.markdown-all-in-one',
    'znck.grammarly'
)

foreach ($extension in $extensions) {
    Write-Host "Installing $extension"
    code --install-extension $extension
}
