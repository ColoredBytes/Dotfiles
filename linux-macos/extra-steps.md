# **as root**

```
touch /usr/local/bin/update && chmod +x /usr/local/bin/update
cat <<EOF >/usr/local/bin/update
sudo apt update
sudo apt upgrade -y
EOF
```

# **as user**

- homebrew

```
# homebrew
export HOMEBREW_NO_ENV_HINTS=true
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```
- load .bash_aliases and .bash_functions (goes into .bashrc)
```
# load .bash_aliases and .bash_functions
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi
```