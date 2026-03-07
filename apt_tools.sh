#!/bin/bash

sudo apt update
sudo apt install bat eza fd-find git-delta ripgrep hyperfine -y
sudo apt autoremove -y

if [ ! -f ~/.local/bin/fd ]; then
ln -s $(which fdfind) ~/.local/bin/fd
fi

if [ ! -f ~/.local/bin/bat ]; then
ln -s $(which batcat) ~/.local/bin/bat
fi

