#!/bin/bash

# Get the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $DIR

# Backup the old nvim config
if [[ -e $HOME/.config/nvim ]]; then
    mv $HOME/.config/nvim $HOME/.config/nvim.bak
fi

# Create the new nvim config
if [[ ! -e $HOME/.confg ]]; then
    mkdir $HOME/.config
fi
ln -s $DIR/nvim $HOME/.config/nvim

# Install Packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim


# Install packer plugins
nvim +PackUpdate +qall

# Enumeration for operating system
OS_LINUX=0
OS_MAC=1
OS_WIN=2
OS_OTHER=3

# Check if command is available
function command_exists() {
    command -v "$@" > /dev/null 2>&1
}

# Install neovim for mac.
function install_neovim_for_mac() {
    brew install neovim
}
