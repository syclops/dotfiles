#!/bin/bash

wget https://www.keepassx.org/dev/attachments/download/115/keepassx-2.0-beta2.tar.gz
tar xvzf keepassx-2.0-beta2.tar.gz
cd keepassx-2.0-beta2
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$HOME/dotfiles/local -DCMAKE_VERBOSE_MAKEFILE=ON ..
make
make install
cd ../..
rm -rf keepassx-2.0-beta2
rm -f tar xvzf keepassx-2.0-beta2.tar.gz
