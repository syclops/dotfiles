#!/bin/bash

# Set up Vundle in a clean Vim installation.

set -o errexit

git clone git@github.com:VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
