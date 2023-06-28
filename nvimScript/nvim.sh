#!/bin/bash
# this is a bash script for confiuring neovim
# Creator: Jack

# Dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install git -y
sudo apt install curl -y

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
mkdir ~/.config/nvim
mv init.lua ~/.config/nvim/
nvim
