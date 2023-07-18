#!/bin/bash
# apache2.sh
#
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y
sudo apt install ufw -y

# configuring ufw <~~
sudo ufw enable
sudo ufw allow ssh
sudo ufw allow 'Apache'
sudo systemctl enable ufw
sudo systemctl stop ufw
sudo systemctl start ufw
#

