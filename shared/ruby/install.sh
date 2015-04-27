#!/bin/bash

echo 'Installing Ruby...'
echo 'Installing Ruby' > /tmp/learninstall.step


if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi
rvm install ruby-2.2.1

echo -e "\033[34;32mDone.\033[0m"
