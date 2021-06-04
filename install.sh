#!/bin/bash

vimpath="~/.config/nvim" 
mkdir -p $vimpath
ln -s $PWD/nvim/ ~/.config/nvim

cp ./.alias $HOME/
cp ./.exports $HOME/
#./bootstrap.sh

