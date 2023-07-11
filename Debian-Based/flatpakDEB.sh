#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "YOU NEED TO REBOOT FOR FLATPAK TO WORK!!"

