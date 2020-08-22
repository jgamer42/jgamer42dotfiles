#!/bin/bash
set -e 
#path power lvl 10k config file /
#this install zsh and oh my zsh
sudo apt install zsh
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"