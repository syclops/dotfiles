#!/bin/bash

set -o errexit

sudo apt-get install $(grep -vE "^\s*#" packages.txt | tr "\n" " ")
