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
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
echo "Downloading and replacing ~/.vimrc..."
wget https://raw.githubusercontent.com/nibbler777/shell/master/.vimrc -O ~/.vimrc
echo "Downloading and replacing ~/.zshrc..."
wget https://raw.githubusercontent.com/nibbler777/shell/master/.zshrc -O ~/.zshrc
echo "Creating vim colors dir and downloading vim colors..."
mkdir -p ~/.vim/colors
wget https://raw.githubusercontent.com/nibbler777/shell/master/.vimrc -O ~/.vim/colors/wombat256mod.vim
echo "Adding vi -> vim alias..."
echo "alias vi='/usr/bin/vim'" >> ~/.zshrc
echo "Moving .oh-my-zsh and changing shell..."
cp -r /root/.oh-my-zsh ~/.oh-my-zsh
chsh -s `which zsh`
