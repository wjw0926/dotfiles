#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp -i -v bashrc ~/.bashrc
cp -i -v vimrc ~/.vimrc
cp -i -v profile ~/.profile
cp -i -v gitconfig ~/.gitconfig
cp -i -v gitignore_global ~/.gitignore_global

vim +PluginInstall +qall
