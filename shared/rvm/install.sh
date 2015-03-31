#!/bin/bash

echo 'Installing RVM...'

brew upgrade gmp 2> /dev/null
brew unlink gnupg && brew link gnupg 1> /dev/null
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 2>/dev/null
\curl -sSL https://get.rvm.io | bash
source $HOME/.rvm/scripts/rvm

echo -e "\033[34;32mDone.\033[0m"
