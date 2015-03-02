#!/bin/bash

if [ -f "$HOME/.irbrc" ]; then
  echo 'Backing up existing .irbrc...'
  mv $HOME/.irbrb{,.bak}
fi

echo 'Installing Flatiron School .irbrc...'
curl "https://gist.githubusercontent.com/loganhasson/f9fe9a73a1839ba1ef4a/raw/f65cef4fd4ac12d832e109eaca477c5b2dc686b0/.irbrc" -o "$HOME/.irbrc" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"
