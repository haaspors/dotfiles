#!/bin/bash

sudo apt-get install -y software-properties-common
sudo apt-get install -y hardinfo htop
sudo apt-get install -y terminator zsh tmux vim
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y vpnc openssh-server
sudo apt-get install -y wireshark virtualbox

# Development
sudo apt-get install -y git-gui gitk git-email git-review
sudo apt-get install -y gcc clang valgrind
sudo apt-get install -y binutils build-essential
sudo apt-get install -y bison flex yasm
sudo apt-get install -y python-dev python-yaml

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository -u 'deb http://dl.google.com/linux/chrome/deb/ stable main'
sudo apt-get install -y google-chrome-stable
#sudo apt-get install google-chrome-unstable


