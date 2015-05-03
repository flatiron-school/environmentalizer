#!/bin/bash

echo 'Installing git...'
echo 'Installing git' > /tmp/learninstall.step

  /usr/local/bin/brew install git 2>/dev/null || /usr/local/bin/brew update 1>&2 2>/dev/null && /usr/local/bin/brew upgrade git 2>/dev/null
echo -e "\033[34;32mDone.\033[0m"
