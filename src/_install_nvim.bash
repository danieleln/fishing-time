#!/usr/bin/env bash


cd /tmp

# downloading the latest stable release of neovim
wget --quiet https://github.com/neovim/neovim/releases/download/stable/nvim.appimage --output-document nvim

chmod +x nvim
sudo mv nvim /usr/bin


cd -
