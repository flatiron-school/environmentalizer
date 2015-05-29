#!/bin/bash

echo 'Installing Bundler...'

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi
gem install bundler

echo -e "\033[34;32mDone.\033[0m"
