#!/bin/bash

# Get the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $DIR

# Backup the old nvim config
if [[ -e ~/.config/nvim ]]; then
    mv ~/.config/nvim ~/.config/nvim.bak
fi

# Create the new nvim config
mkdir -p ~/.config
cd ~/.config && ln -s $DIR/nvim .

# Install Packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim

