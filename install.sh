#!/bin/bash

# Bashrc
rm ~/.bashrc
cp ./.bashrc ~/.bashrc
source ~/.bashrc

# Vimrc
rm ~/.vimrc
cp ./.vimrc ~/.vimrc

# Git
git config --global user.name "Rujaun Fourie"
git config --global user.email rujaun@gmail.com
git config --global pull.rebase false

# Font config
sudo cp ./.local.conf /etc/fonts/.local.conf