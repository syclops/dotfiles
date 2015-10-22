#!/bin/bash

set -o errexit

DOTFILES_VIM=$HOME/dotfiles/vim

# Install Vundle and its associated plugins.
cp vundle.vimrc $HOME/.vimrc
git clone git@github.com:VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Compile libraries for the YouCompleteMe plugin.
cd $HOME/.vim/bundle/youcompleteme
git submodule update --init --recursive
./install.py --clang-completer

# Place the remaining configurations into the .vimrc.
cat $DOTFILES_VIM/post.vimrc >> $HOME/.vimrc

