#!/bin/bash

echo 'Installing Google Chrome...'

if [ -f googlechrome.dmg ]; then
  rm googlechrome.dmg
fi

echo -n 'Downloading...'
echo 'Downloading Google Chrome' > /tmp/learninstall.step
curl "http://fis-downloads.s3.amazonaws.com/googlechrome.dmg" -o "googlechrome.dmg" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing...'
echo 'Installing Google Chrome' > /tmp/learninstall.step
hdiutil attach googlechrome.dmg > /dev/null
cp -r "/Volumes/Google Chrome/Google Chrome.app" "/Applications/Google Chrome.app"
hdiutil detach "/Volumes/Google Chrome"
rm googlechrome.dmg > /dev/null
echo -e "\033[34;32mDone.\033[0m"
