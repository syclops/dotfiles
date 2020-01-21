#!/usr/bin/env bash

set -o errexit

# Set the config directory. Even if XDG_CONFIG_HOME is set to the empty string,
# treat it as unset and set the default value.
if [ -z "$XDG_CONFIG_HOME" ]; then
	NVIM_CONFIG=$HOME/.config/nvim
else
	NVIM_CONFIG=$XDG_CONFIG_HOME/nvim
fi

# Set the data directory. Even if XDG_DATA_HOME is set to the empty string,
# treat it as unset and set the default value.
if [ -z "$XDG_DATA_HOME" ]; then
	NVIM_DATA=$HOME/.local/share/nvim
else
	NVIM_DATA=$XDG_DATA_HOME/nvim
fi

# Create the data directory if it doesn't already exist.
mkdir -p $NVIM_DATA

# Download the files for vim-plug.
curl -fLo $NVIM_DATA/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link this script's directory to the config directory.
if [ -e "$NVIM_CONFIG" ]; then
	echo "$NVIM_CONFIG already exists, moving to $NVIM_CONFIG.backup"
	mv $NVIM_CONFIG $NVIM_CONFIG.backup
fi
ln -s $(readlink -f $(dirname "$0")) $NVIM_CONFIG
