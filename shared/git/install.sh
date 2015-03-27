#!/bin/bash

echo 'Installing git...'
brew install git || brew update 1>&2 2>/dev/null && brew upgrade git 2>/dev/null
echo -e "\033[34;32mDone.\033[0m"
