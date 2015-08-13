#!/bin/bash

# Script *must* be run using sudo
echo 'Installing Ruby...'

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
  rvm get head
fi

rvm install ruby-2.2.2
rvm use 2.2.2 --default

echo -e "\033[34;32mDone.\033[0m"
