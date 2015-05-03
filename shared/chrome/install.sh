#!/bin/bash

echo 'Installing Google Chrome...'

if [ -f googlechrome.dmg ]; then
  rm googlechrome.dmg
fi

echo -n 'Downloading...'
curl "http://fis-downloads.s3.amazonaws.com/googlechrome.dmg" -o "googlechrome.dmg" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing...'
hdiutil attach -nobrowse googlechrome.dmg > /dev/null
cp -r "/Volumes/Google Chrome/Google Chrome.app" "/Applications/Google Chrome.app"
hdiutil detach "/Volumes/Google Chrome"
rm googlechrome.dmg > /dev/null
echo -e "\033[34;32mDone.\033[0m"
