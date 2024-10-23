#!/bin/bash

clear

# Adapter pour l'installation d'un Serveur CLI 
dnf install sudo -y

# Installation MàJ
sudo dnf update -y && sudo dnf upgrade -y

# Installation vim
sudo dnf install vim -y

# Installation du package Network
sudo dnf install net-tools -y

# Configuration vimrc
echo 'set nocompatible' >> ~/.vimrc
echo 'set number' >> ~/.vimrc

# Save file configuration 
mkdir ~/SaveConfig
cp -v /etc/bashrc ~/SaveConfig
cp -v /etc/bash.bashrc ~/SaveConfig


#Personnalisation du Terminal avec Starship 
curl -sS https://starship.rs/install.sh | sh



# Configuration bashrc
echo '  ' >> /etc/bashrc
echo '# My alias ' >> /etc/bashrc
echo 'alias c="clear"' >> /etc/bashrc
echo 'alias u="sudo dnf update -y && sudo dnf upgrade -y"' >> /etc/bashrc
echo 'alias i="sudo dnf install -y"' >> /etc/bashrc
echo 'alias s="dnf search"' >> /etc/bashrc
echo ' "eval "$(starship init bash)"" ' >> /etc/bashrc


# Configuration bash.bashrc  
echo '  ' >> /etc/bash.bashrc 
echo '# My alias ' >> /etc/bash.bashrc
echo 'alias c="clear"' >> /etc/bash.bashrc
echo 'alias u="sudo dnf update -y && sudo dnf upgrade -y"' >> /etc/bash.bashrc
echo 'alias i="sudo dnf install -y"' >> /etc/bash.bashrc
echo 'alias s="dnf search"' >> /etc/bash.bashrc
echo ' "eval "$(starship init bash)"" ' >> /etc/bash.bashrc


# Application des alias sur l'utilisateur en cours 
source /etc/bashrc >> /dev/null 
source /etc/bash.bashrc >> /dev/null 

# Supprimer le script à la fin de l'installation 
# rm scpt



echo ' ===================================== '
echo '          Operation terminée           '
echo ' ===================================== '
