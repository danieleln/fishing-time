#!/usr/bin/env bash


# log file
LOG_FILE="$1"

cd /tmp

# libfuse2 is required to run appimages.
# Checking if it's installed
if ! dpkg -l libfuse2 > /dev/null 2>&1; then
    sudo apt install libfuse2
fi;

# plugin "treesitter" requires a C compiler
# https://github.com/nvim-treesitter/nvim-treesitter
sudo apt install build-essential

# plugin "telescope" requires the following packages:
# https://github.com/BurntSushi/ripgrep#installation
sudo apt-get install ripgrep
# https://github.com/sharkdp/fd#installation
sudo apt install fd-find


# downloading the latest stable release of neovim
wget --quiet https://github.com/neovim/neovim/releases/download/stable/nvim.appimage --output-document nvim

chmod +x nvim
sudo mv nvim /usr/bin


echo
echo
echo "NB: not to have issues with appimages and libfuse2, make sure that WSL is version 2, by running these commands in PowerShell:"
echo "    wsl -l -v    # to lists all installed kernels with the respective version"
echo "if the listed version is 1, then run:"
echo "    wsl --udpate"
echo "    wsl --set-version [VersionName] 2"
echo
echo

cd -
