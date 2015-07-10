#!/bin/bash

echo 'Installing GPG...'

brew install gnupg 2>/dev/null || brew update 1>&2 2>/dev/null && brew upgrade gnupg 2>/dev/null
echo -e "\033[34;32mDone.\033[0m"
