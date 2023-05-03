#!/usr/bin/env bash


# log file
LOG_FILE="$1"

cd /tmp

# libfuse2 is required to run appimages.
# Checking if it's installed
if ! dpkg -l libfuse2 > /dev/null 2>&1; then
    sudo apt install libfuse2
fi;

# downloading the latest stable release of neovim
wget --quiet https://github.com/neovim/neovim/releases/download/stable/nvim.appimage --output-document nvim

chmod +x nvim
sudo mv nvim /usr/bin


cd -
