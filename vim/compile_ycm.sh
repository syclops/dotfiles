#!/bin/bash

set -o errexit

cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
./install.py --clang-completer
