HISTSIZE=1000
HISTFILESIZE=10000
HISTTIMEFORMAT="%G %T " # Time stamps when command was ran.
HISTCONTROL=ignoredups # ignore duplicate commands in the history.

# load .bash_aliases and .bash_functions
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi 

### Extras ###

# homebrew
export HOMEBREW_NO_ENV_HINTS=true
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# oh-my-posh
export POSH_PATH="/$HOME/.config/posh-themes"
eval "$(oh-my-posh init bash --config "$POSH_PATH/my.blue-owl.omp.json")"
