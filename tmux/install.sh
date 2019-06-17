#!/usr/bin/env sh

set -o errexit

ln -s tmux.conf ~/.tmux.conf

if [ -z "$XDG_CONFIG_HOME" ]; then
  mkdir -p "$HOME/.config"
  ln -s "$(pwd)" "$HOME/.config/tmux"
else
  ln -s "$(pwd)" "$XDG_CONFIG_HOME/tmux"
fi

