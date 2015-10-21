#!/bin/bash

set -o errexit

cp vimrc $HOME/.vimrc
source install_vundle.sh
