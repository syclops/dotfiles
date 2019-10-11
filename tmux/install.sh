#!/usr/bin/env sh

# Abort the script if any errors occur
set -o errexit

# For easy updates, the actual file lives in this directory.
ln -s $(pwd)/tmux.conf ~/.tmux.conf

# Install TPM for easy plugin management
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

if [ -z "$XDG_CONFIG_HOME" ]; then
  mkdir -p "$HOME/.config"
  ln -s "$(pwd)" "$HOME/.config/tmux"
else
  ln -s "$(pwd)" "$XDG_CONFIG_HOME/tmux"
fi

