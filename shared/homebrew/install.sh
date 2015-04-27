#!/bin/bash

echo 'Installing Homebrew...'
echo 'Installing Homebrew' > /tmp/learninstall.step

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo -e "\033[34;32mDone.\033[0m"
