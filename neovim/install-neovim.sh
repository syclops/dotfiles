#!/bin/bash

set -o errexit

CONFIG=$HOME/.config/nvim
LOCAL=$HOME/.local/share/nvim

curl -fLo $LOCAL/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s init.vim $CONFIG/init.vim
