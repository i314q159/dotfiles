#!/usr/bin/bash

# vim
cp ~/.vimrc vimrc
rm -rf ./plugins
cp ~/.vim/plugins -r ./
