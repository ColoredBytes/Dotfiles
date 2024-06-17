HISTSIZE=1000
HISTFILESIZE=10000
HISTTIMEFORMAT="%G %T " # Time stamps when command was ran.
HISTCONTROL=ignoredups # ignore duplicate commands in the history.

### Extras ###

# Paths
POSH_PATH="/mnt/c/Users/rossj25/.config/powershell/themes"
CONFIG_DIR="/home/devops/.config/bash"

# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export HOMEBREW_NO_ENV_HINTS=true

# oh-my-posh
eval "$(oh-my-posh init bash --config "$POSH_PATH/my.blue-owl.omp.json")"

# config scripts
. "$CONFIG_DIR/functions.sh"
. "$CONFIG_DIR/alias.sh"

