#!/bin/bash
# redTeam-arch.sh
#
# This script is for configuring a arch based system for security testing
#

sudo pacman -Syu

# installing blackarch repo
curl -O https://blackarch.org/strap.sh
echo 5ea40d49ecd14c2e024deecf90605426db97ea0c strap.sh | sha1sum -c
chmod +x strap.sh
sudo ./strap.sh
sudo pacman -Syu
sudo rm strap.sh
