#/usr/bin/env bash

# Abort script if any errors occur
set -o errexit

# Symlink main zshrc file into $HOME
ln -s $(pwd)/zshrc ~/.zshrc

# Set up zplug (https://github.com/zplug/zplug)
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# Symlink this directory into XDG_CONFIG_HOME (or default value)
if [ -z "$XDG_CONFIG_HOME" ]; then
  mkdir -p "$HOME/.config"
  ln -s "$(pwd)" "$HOME/.config/zsh"
else
  ln -s "$(pwd)" "$XDG_CONFIG_HOME/zsh"
fi
