#!/bin/bash

mkdir -p $HOME/.config
ln -s $PWD/nvim/ $HOME/.config/nvim

cp ./.alias $HOME/
cp ./.exports $HOME/

echo "sh $HOME/.alias" >> $HOME/.zshrc
echo "sh $HOME/.exports" >> $HOME/.zshrc

#./bootstrap.sh

