#!/bin/bash
# Creator: Jack

# color vars
GREEN="\e[32m"
ENDCOLOR="\e[0m"

echo -e "${GREEN}Configuring Kali Container...${ENDCOLOR}"
sudo apt update && sudo apt upgrade -y
sudo apt install kali-linux-headless -y # <~ kali metapackage for installing kali on a headless machine.
sudo apt install gobuster -y # <~ directory buster written in go

# Copying wordlists to /home/kali/
cd
cp -r /etc/share/wordlists /home/kali/def-wordlists

# cloning SecLists
cd
git clone https://github.com/danielmiessler/SecLists.git


# THIS ISNT COMPLETE AND NEEDS TO BE FINISHED!
