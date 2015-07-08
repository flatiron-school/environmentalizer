#!/bin/bash

echo 'Installing Postgres gem...'

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi
gem install pg

echo -e "\033[34;32mDone.\033[0m"
