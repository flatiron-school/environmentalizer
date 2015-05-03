#!/bin/bash

if [ -f "$HOME/.gemrc" ]; then
  echo 'Backing up existing .gemrc...'
  mv $HOME/.gemrc{,.bak}
fi

echo -n 'Installing Flatiron School .gemrc...'

echo "gem: --no-ri --no-rdoc" > $HOME/.gemrc
echo -e "\033[34;32mDone.\033[0m"
