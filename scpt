#!/bin/bash

clear

# Adapter pour l'installation d'un Serveur CLI 
apt install sudo -y

# Installation MàJ
sudo dnf update -y && sudo dnf upgrade -y

# Installation vim
sudo dnf install vim -y

# Installation du package Network
sudo dnf install NetworkManager-tui -y

# Configuration vimrc
echo 'set no compatible' >> ~/.vimrc
echo 'set number' >> ~/.vimrc

# Save file configuration 
mkdir /home/SaveConfig
cp -v /etc/bashrc /home/SaveConfig



# Configuration bashrc

echo '  ' >> ~/.bashrc
echo '# My alias ' >> ~/.bashrc
echo 'alias c="clear"' >> ~/.bashrc
echo 'alias u="sudo dnf update -y && sudo dnf upgrade -y"' >> ~/.bashrc
echo 'alias i="sudo dnf install -y"' >> ~/.bashrc
echo 'alias s="dnf search"' >> ~/.bashrc

# Application des alias sur l'utilisateur en cours 
source ~/.bashrc 

# Supprimer le script à la fin de l'installation 
rm scpt


echo ' ===================================== '
echo '   Operation terminée           '
echo ' ===================================== '
