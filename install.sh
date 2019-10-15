#!/bin/bash

sudo apt-get install vim
yum install vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ -f "$HOME/.bashrc" ]; then
    mv -i -v ~/.bashrc ~/.bashrc.orig
    cp -i -v bashrc ~/.bashrc
    source ~/.bashrc
else
    cp -i -v bashrc ~/.bashrc
    source ~/.bashrc
fi

if [ -f "$HOME/.vimrc" ];
then
    mv -i -v ~/.vimrc ~/.vimrc.orig
    cp -i -v vimrc ~/.vimrc
    source ~/.vimrc
else
    cp -i -v vimrc ~/.vimrc
    source ~/.vimrc
fi

if [ -f "$HOME/.profile" ]; then
    mv -i -v ~/.profile ~/.profile.orig
    cp -i -v profile ~/.profile
fi

if [ -f "$HOME/.gitconfig" ];
then
    mv -i -v ~/.gitconfig ~/.gitconfig.orig
    cp -i -v gitconfig ~/.gitconfig
else
    cp -i -v gitconfig ~/.gitconfig
fi

if [ -f "$HOME/.gitignore_global" ]; then
    mv -i -v ~/.gitignore_global ~/.gitignore_global.orig
    cp -i -v gitignore_global ~/.gitignore_global
else
    cp -i -v gitignore_global ~/.gitignore_global
fi

vim +PluginInstall +qall
