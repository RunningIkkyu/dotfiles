#!/bin/bash

mkdir -p $HOME/.config
ln -s $PWD/nvim/ $HOME/.config/nvim

cp ./.alias $HOME/
cp ./.exports $HOME/

echo "source $HOME/.alias" >> $HOME/.zshrc
echo "source $HOME/.exports" >> $HOME/.zshrc

#./bootstrap.sh

