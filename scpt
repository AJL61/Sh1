#!/bin/bash

clear

# Adapter pour l'installation d'un Serveur CLI 
dnf install sudo -y

# Installation MàJ
sudo dnf update -y && sudo dnf upgrade -y

# Installation vim, curl et tmux
sudo dnf install vim curl tmux -y

# Installation du package Network
sudo dnf install net-tools -y


# Configuration vmirc global 
echo 'set nocompatible' >> /etc/vimrc
echo 'set number' >> /etc/vimrc 

# Configuration vimrc indentation
echo 'set autoindent' >> /etc/vimrc
echo 'set smartindent' >> /etc/vimrc
echo 'set tabstop=4' >> /etc/vimrc
echo 'set shiftwidth=4' >> /etc/vimrc
echo 'set expandtab' >> /etc/vimrc

echo 'inoremap { {}<Left>' >> /etc/vimrc
echo 'inoremap ( ()<Left>' >> /etc/vimrc
echo 'inoremap " ""<Left>' >> /etc/vimrc
echo 'inoremap [ []<Left>' >> /etc/vimrc


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
echo 'eval "$(starship init bash)"' >> /etc/bashrc


# Configuration bash.bashrc  
echo '  ' >> /etc/bash.bashrc 
echo '# My alias ' >> /etc/bash.bashrc
echo 'alias c="clear"' >> /etc/bash.bashrc
echo 'alias u="sudo dnf update -y && sudo dnf upgrade -y"' >> /etc/bash.bashrc
echo 'alias i="sudo dnf install -y"' >> /etc/bash.bashrc
echo 'alias s="dnf search"' >> /etc/bash.bashrc
echo 'eval "$(starship init bash)"' >> /etc/bash.bashrc


# Application des alias sur l'utilisateur en cours 
source /etc/bashrc >> /dev/null 
source /etc/bash.bashrc >> /dev/null 

# Supprimer le script à la fin de l'installation 
# rm scpt



echo ' ===================================== '
echo '          Operation terminée           '
echo ' ===================================== '
