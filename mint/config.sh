#!/bin/bash

set -o errexit

# Git settings
git config --global user.name "Steve Matsumoto"
echo "Enter your GMail address below:"
read email
git config --global user.email "$email"
git config --global push.default simple
