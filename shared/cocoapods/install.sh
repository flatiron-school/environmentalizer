#!/bin/bash

echo 'Installing cocoapods...'

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi
gem install cocoapods

echo -e "\033[34;32mDone.\033[0m"
