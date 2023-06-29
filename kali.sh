#!/bin/bash
# Creator: Jack
echo "\nUpdating..."
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
sudo apt clean
echo "\nDone Updating, Now installing Programs!"
sudo apt install sublist3r -y
sudo apt install gobuster -y
sudo apt install terminator -y
echo "\nNow cloning wordlists!"
cd Desktop/
git clone https://github.com/danielmiessler/SecLists.git
echo "\nDone, This system is now ready!"
