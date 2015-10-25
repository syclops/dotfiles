#!/bin/bash

set -o errexit

wget https://archive.apache.org/dist/subversion/subversion-1.7.22.tar.gz
tar xvzf subversion-1.7.22.tar.gz
cd subversion-1.7.22
./configure --prefix=$HOME/dotfiles/local
make
make install
cd ..
rm -rf subversion-1.7.22
rm subversion-1.7.22.tar.gz
