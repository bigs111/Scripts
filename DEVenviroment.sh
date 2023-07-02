#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install wget
sudo apt install micro -y
micro -plugin install wc
micro -plugin install fzf
micro -plugin install bounce
micro -plugin install zigfmt
micro -plugin install aspell
micro -plugin install detectindent
micro -plugin install jump
micro -plugin install quickfix
micro -plugin install lsp
micro -plugin install autofmt
micro -plugin install filemanager

# FLATPAK INSTALL <<~~
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.visualstudio.code
flatpak install flathub io.github.shiftey.Desktop
echo "YOU NEED TO REBOOT FOR FLATPAK TO WORK!!"

# PODMAN INSTALL <~~
sudo apt install podman -y
sudo podman pull ubuntu

# INSTALLING TERMINATOR ( TERMINAL ) <~~
sudo apt install terminator -y
echo -e "Gnome-Terminal needs to be uninstalled if you plan on using terminator as the main terminal"
echo -e "DONE!"

# THIS SECTION IS JUST FOR ASKING THE USER IF THEY WANT TO REBOOT THEIR SYSTEM!
read -p "Do you want to reboot the system? (y/n): " choice

if [[ $choice == "y" || $choice == "Y" ]]; then
  echo "Rebooting the system..."

  sudo reboot
elif [[ $choice == "n" || $choice == "N" ]]; then
  echo "System will not be rebooted."
else
  echo "Invalid choice. Please enter 'y' for Yes or 'n' for No."
fi
