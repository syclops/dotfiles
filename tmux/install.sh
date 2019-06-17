#!/usr/bin/env sh

set -o errexit

ln -s tmux.conf ~/.tmux.conf

if [ -z "$XDG_CONFIG_HOME" ]; then
  mkdir -p $HOME/.config
  ln -s . "$HOME/.config/tmux"
else
  ln -s . "$XDG_CONFIG_HOME/tmux"
fi

