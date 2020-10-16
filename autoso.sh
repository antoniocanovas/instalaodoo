apt-get install unattended-upgrades
scp -P 22022 root@185.47.131.40:/etc/apt/apt.conf.d/50unattended-upgrades /etc/apt/apt.conf.d
scp -P 22022 root@185.47.131.40:/etc/apt/apt.conf.d/20auto-upgrades /etc/apt/apt.conf.d
unattended-upgrades --dry-run --debug
