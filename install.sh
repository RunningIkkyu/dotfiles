#!/bin/bash

mkdir -p $HOME/.config/nvim
ln -s $PWD/nvim/ $HOME/.config/nvim

cp ./.alias $HOME/
cp ./.exports $HOME/
#./bootstrap.sh

