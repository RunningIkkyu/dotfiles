#!/bin/bash

vimpath="~/.config/nvim" 
mkdir -p $vimpath
ln -s $PWD/nvim/ ~/.config/nvim

./bootstrap.sh
