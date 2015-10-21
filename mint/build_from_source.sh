#!/bin/bash

set -o errexit

# Install xcape
git clone git@github.com:alols/xcape.git $HOME/xcape
cd $HOME/xcape
make
sudo make install
