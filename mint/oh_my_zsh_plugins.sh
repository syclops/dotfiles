#!/bin/bash

# Script for installing custom oh-my-zsh plugins.
# This script uses SSH to clone repositories.

set -o errexit

git clone git@github.com:zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
