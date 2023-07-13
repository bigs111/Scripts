#!/bin/bash

# this is working on Ubuntu 22.04.2 LTS as of Jul 13 2023
sudo apt update && sudo apt upgrade -y
sudo apt install emacs-nox -y
sudo apt install git -y
git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
