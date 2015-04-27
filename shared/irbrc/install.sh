#!/bin/bash

if [ -f "$HOME/.irbrc" ]; then
  echo 'Backing up existing .irbrc...'
  mv $HOME/.irbrb{,.bak}
fi

echo 'Installing Flatiron School .irbrc...'
echo 'Setting up .irbrc' > /tmp/learninstall.step

curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/irbrc" -o "$HOME/.irbrc" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"
