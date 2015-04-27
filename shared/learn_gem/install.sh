#!/bin/bash

echo 'Installing Learn gem...'
echo 'Installing Learn gem' > /tmp/learninstall.step


if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi
gem install learn-co

echo -e "\033[34;32mDone.\033[0m"
