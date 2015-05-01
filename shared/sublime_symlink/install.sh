#!/bin/bash

echo -n 'Setting up symlink...'
echo 'Setting up Sublime Text symlink' > /tmp/learninstall.step

if [ "$EUID" -ne 0 ]
then
  echo 'Must be run with sudo'
  exit 1
fi

if [[ -d "/Applications/Sublime Text.app" ]]; then
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin
elif [[ -d "/Applications/Sublime Text 2.app" ]]; then
  ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin
else
  echo "\033[1;31mSublime Text Symlink could not be created\033[0m"
fi
echo -e "\033[34;32mDone.\033[0m"
