#!/bin/bash

# Get the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo $DIR

# Backup the old nvim config
mv ~/.config/nvim ~/.config/nvim.old

# Create the new nvim config
mkdir -p ~/.config/nvim
cd ~/.config && ln -s $DIR/nvim .

# Install Packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim

