#!/bin/bash
# Creator: Jack

# color vars
GREEN="\e[32m"
ENDCOLOR="\e[0m"

# Installing Dependencies
echo -e "${GREEN}Installing Dependencies... ${ENDCOLOR}"
sudo apt update && sudo apt upgrade -y
sudo apt install git -y
sudo apt install wget -y
sudo apt install curl -y
sudo apt install micro -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install netutils -y
sudo apt install build-essential -y

# Installing Tools
echo -e "${GREEN}Installing Tools... ${ENDCOLOR}"
sudo apt install nmap -y
sudo apt install sublist3r -y
sudo apt install gobuster -y
sudo apt install hydra -y
sudo apt install john -y
sudo apt install wpscan -y
sudo apt install wordlists -y
sudo apt install netcat -y
sudo apt install skipfish -y
sudo apt install nikto -y
sudo apt install beef -y
sudo apt install metasploit-framework -y
sudo apt install sqlmap -y

# Copying wordlists to /home/kali/
cd
cp /etc/share/wordlists /home/kali/

# cloning SecLists
cd
git clone https://github.com/danielmiessler/SecLists.git


# THIS ISNT COMPLETE AND NEEDS TO BE FINISHED!
