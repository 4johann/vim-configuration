#!/bin/bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv vimrc ~/.vimrc
vim -c PluginInstall

cd ~/.vim/bundle/youcompleteme
./install.sh
