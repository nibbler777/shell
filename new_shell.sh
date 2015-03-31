#!/usr/bin/bash

#Installs and prepares zsh and vim

echo "Installing curl-devel..."
yum -y install curl-devel
echo "Installing git..."
yum -y install git
echo "Installing zsh..."
yum -y install zsh
echo "Installing wget..."
yum -y install wget
echo "Installing oh-my-zsh..."
wget --no-check-certificate https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
echo "Downloading and replacing ~/.vimrc..."
wget --no-check-certificate https://raw.githubusercontent.com/nibbler777/shell/master/.vimrc -O /home/$1/.vimrc
echo "Downloading and replacing ~/.zshrc..."
wget --no-check-certificate https://raw.githubusercontent.com/nibbler777/shell/master/.zshrc -O /home/$1/.zshrc
echo "Creating vim colors dir and downloading vim colors..."
mkdir -p /home/$1/.vim/colors
wget --no-check-certificate https://raw.githubusercontent.com/nibbler777/shell/master/.vimrc -O /home/$1/.vim/colors/wombat256mod.vim
echo "Adding vi -> vim alias..."
echo "alias vi='/usr/bin/vim'" >> /home/$1/.zshrc
echo "Moving .oh-my-zsh and changing shell..."
cp -r /root/.oh-my-zsh /home/$1/.oh-my-zsh
chsh -s `which zsh` $1
