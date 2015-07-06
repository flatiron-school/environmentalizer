#!/bin/bash

if [ -f "$HOME/.bash_profile" ]; then
  echo 'Backing up existing .bash_profile...'

  if [[ ! -e "$HOME/.bash_profile.bak" ]]; then
    mv $HOME/.bash_profile{,.bak}
  else
    num=2
    while [[ -e "$HOME/.bash_profile.bak.$num" ]]; do
      (( num++ ))
    done

    mv $HOME/.bash_profile "$HOME/.bash_profile.bak.$num"
  fi
  echo -e "\033[34;32mDone.\033[0m"
fi

echo -n 'Setting up Flatiron School .bash_profile...'

curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/bash_profile" -o "$HOME/.bash_profile" >/dev/null 2>&1

echo -e "\033[34;32mDone.\033[0m"
