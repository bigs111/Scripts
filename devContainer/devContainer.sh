#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install wget -y
sudo apt install curl -y
sudo apt install git -y
sudo apt install build-essential -y
sudo apt install cargo -y
sudo apt install npm -y

# installing neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
mkdir ~/.config
mkdir ~/.config/nvim
touch ~/.config/nvim/init.lua
# done installing neovim


# not finished

