#!/usr/bin/bash

set -o errexit

# Install thefuck
wget -O - https://raw.githubusercontent.com/nvbn/thefuck/master/install.sh | sh - && $0

# Install oh-my-zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
