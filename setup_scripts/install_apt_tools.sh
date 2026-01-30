#!/bin/bash

sudo apt update
sudo apt install bat eza fd-find git-delta ripgrep hyperfine -y
sudo apt autoremove -y

ln -s $(which fdfind) ~/.local/bin/fd
ln -s $(which batcat) ~/.local/bin/bat
