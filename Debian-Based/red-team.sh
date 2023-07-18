#!/bin/bash
# red-team.sh
#
# This script is for setting up a "red team" enviroment in Ubuntu <~~
#

# vars
RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

# updating
sudo apt update && sudo apt upgrade -y

# installing depends
echo -e "${GREEN}Installing Depends${ENDCOLOR}"
sudo apt install git -y
sudo apt install curl -y
sudo apt install terminator -y
sudo apt install podman -y
sudo apt install distrobox -y # <~ podman is a requried depend
sudo apt install ufw -y

# installing tools
echo -e "${GREEN}Installing Tools${ENDCOLOR}"
sudo apt install nmap -y
sudo apt install gobuster -y
sudo snap install metasploit-framework
sudo snap install enum4linux
sudo snap install zaproxy --classic
sudo snap install john-the-ripper
sudo snap install amass
sudo snap install cariddi
sudo apt install netcat -y
sudo snap install sqlmap
sudo snap install sublime-text --classic

# setting up distrobox
distrobox-create --name kali --image kali-rolling

echo -e "${GREEN}Install Completed${ENDCOLOR}"

echo -e "${RED}I suggest rebooting your vm before use${ENDCOLOR}"
