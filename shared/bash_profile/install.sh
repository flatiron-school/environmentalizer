#!/bin/bash

if [ -f "$HOME/.bash_profile" ]; then
  echo 'Backing up existing .bash_profile...'
  mv $HOME/.bash_profile{,.bak}
  echo -e "\033[34;32mDone.\033[0m"
fi

echo -n 'Setting up Flatiron School .bash_profile...'

echo 'Setting up .bash_profile' > /tmp/learninstall.step

curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/bash_profile" -o "$HOME/.bash_profile" >/dev/null 2>&1

echo -e "\033[34;32mDone.\033[0m"
