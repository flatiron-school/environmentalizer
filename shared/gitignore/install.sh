#!/bin/bash

if [ -f "$HOME/.gitignore" ]; then
  echo 'Backing up existing .gitignore...'
  mv $HOME/.gitignore{,.bak}
fi

echo 'Setting up .gitignore' > /tmp/learninstall.step

echo 'Installing Flatiron School .gitignore...'
curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/gitignore" -o "$HOME/.gitignore" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"
