#!/usr/bin/env bash


# log file
LOG_FILE="$1"

cd /tmp

# installing nvim from the appimage also require libfuse2 to run
sudo apt install libfuse2

# downloading the latest stable release of neovim
wget --quiet https://github.com/neovim/neovim/releases/download/stable/nvim.appimage --output-document nvim

chmod +x nvim
sudo mv nvim /usr/bin


cd -
