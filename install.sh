#!/bin/bash

mkdir -p $HOME/.config
ln -s $PWD/nvim/ $HOME/.config/nvim

cp ./.alias $HOME/
cp ./.exports $HOME/

#./bootstrap.sh

