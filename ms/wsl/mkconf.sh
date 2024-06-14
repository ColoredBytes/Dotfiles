#!/usr/bin/env bash
# Author: Joshua Ross
# Github: https://github.com/ColoredBytes
# Purpose: tiny script to make the wsl file for wsl in windows. 

# Variables
PATH="/etc/wsl.conf"

# create wsl.conf file
touch $PATH

# heredoc to make file
cat <<EOF >$PATH
[boot]
systemd=true
[automount]
root = /
options = "metadata,dmask=022,fmask=033"
[user]
default=RossJ25
EOF

# verify contents are there
cat $PATH
