**as root**

```
touch /usr/local/bin/update && chmod +x /usr/local/bin/update
cat <<EOF >/usr/local/bin/update
sudo apt update
sudo apt upgrade -y
EOF
```
