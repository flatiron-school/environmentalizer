#!/bin/bash

echo 'Installing Google Chrome...'

if [ -f "$HOME/googlechrome.dmg" ]; then
  rm $HOME/googlechrome.dmg
fi

echo -n 'Downloading...'
curl "http://fis-downloads.s3.amazonaws.com/googlechrome.dmg" -o "$HOME/googlechrome.dmg" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing...'
hdiutil attach -nobrowse $HOME/googlechrome.dmg > /dev/null
cp -r "/Volumes/Google Chrome/Google Chrome.app" "/Applications/Google Chrome.app"
hdiutil detach "/Volumes/Google Chrome"
rm $HOME/googlechrome.dmg > /dev/null
echo -e "\033[34;32mDone.\033[0m"
