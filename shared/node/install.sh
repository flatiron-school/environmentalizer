#!/bin/bash

echo 'Installing node...'

brew install node 2>/dev/null || brew update 1>&2 2>/dev/null && brew upgrade node 2>/dev/null
echo -e "\033[34;32mDone.\033[0m"
