#!/bin/bash

# Create the directories you need

sudo mkdir -p /opt/local/bin

# Download, compile, and install the latest Vim
cd ~
git clone https://github.com/vim/vim.git && cd vim
./configure --prefix=/opt/local
make
sudo make install

# Add the binary to your path, ahead of /usr/bin
echo 'PATH=/opt/local/bin:$PATH' >> ~/.bashrc

# Reload bash_profile so the changes take effect in this window
source "~/.bashrc"

# Check Again
vim --verbose
