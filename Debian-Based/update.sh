#!/bin/bash
# update.sh 
sudo apt update && sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt clean
echo -e "Done Updating..."
