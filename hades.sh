#!/bin/sh

sudo echo "Echoing with sudo to get privileges for the rest of the script"

echo "Running system update"
sudo apt update && sudo apt upgrade --yes

echo "Making directories"
mkdir "$HOME/.local/bin"
mkdir "$HOME/Documents"
mkdir "$HOME/Downloads"
mkdir "$HOME/Pictures"
mkdir "$HOME/Music"

echo "Removing bash_logout"
rm "$HOME/.bash_logout"

echo "Installing software"
sudo apt install --yes firefox-esr neovim git x11-xkb-utils htop mpv libxft-dev

echo "Cloning repo"
git clone https://github.com/Lemuren/hades.git

echo "Building st"
cd suckless/st
sudo make install
cd ../..

echo "Building dmenu"
cd suckless/dmenu
sudo make install
cd ../..

echo "Building dwm"
cd suckless/dmenu
sudo make install
cd ../..

echo "Copying dotfiles"
cp dotfiles/.xinitrc $HOME
cp dotfiles/.profile $HOME
cp dotfiles/.bashrc $HOME
