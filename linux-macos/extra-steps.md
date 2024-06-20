# **Some useful things to add.**

## **as root**

<details>
<summary> Click Here </summary>

- **for ubuntu**

```bash
touch /usr/local/bin/update && chmod +x /usr/local/bin/update
cat <<EOF >/usr/local/bin/update
sudo apt update
sudo apt upgrade -y
EOF
```
- **for fedora based systems**
```bash
touch /usr/local/bin/update && chmod +x /usr/local/bin/update
cat <<EOF >/usr/local/bin/update
sudo dnf update -y
EOF
```
</details>

## **as user**

<details>
<summary> Click Here </summary>

- homebrew

```bash
# homebrew
export HOMEBREW_NO_ENV_HINTS=true
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```
- **oh-my-posh**
```bash
# oh-my-posh
export POSH_PATH="/$HOME/.config/oh-my-posh"
eval "$(oh-my-posh init bash --config "$POSH_PATH/my.blue-owl.omp.json")"
```


- load .bash_aliases and .bash_functions (goes into .bashrc)
```bash
# load .bash_aliases and .bash_functions
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
    source $HOME/.bash_functions
fi
```
</details>
