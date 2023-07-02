#!/bin/bash

# this script is for quickly deploying my kali containers

# installing dependencies
echo "Installing Dependencies..."
sudo apt update && sudo apt upgrade -y
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install git -y 
sudo apt install wget -y
sudo apt install curl -y
sudo apt install micro -y
sudo apt install fzf -y
sudo apt install iputils -y
# installing tools
echo "Installing Tools..."
git clone https://github.com/guelfoweb/knock.git
cd knock
pip3 install -r requirements.txt
cd
sudo apt install nmap -y
sudo apt install metasploit-framework -y
sudo apt install sublist3r -y
sudo apt install sqlmap -y
# downloading wordlists
echo "Getting wordlists..."
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/Karanxa/Bug-Bounty-Wordlists.git

echo "This container is now ready!"




