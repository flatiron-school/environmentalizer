#!/bin/bash

echo 'Installing Sublime Text...'

if [ -f sublime.dmg ]; then
  rm sublime.dmg
fi


echo -n 'Downloading...'
curl "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg" -o "sublime.dmg" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing...'
hdiutil attach sublime.dmg > /dev/null
cp -r "/Volumes/Sublime Text 2/Sublime Text 2.app" "/Applications/Sublime Text 2.app"
hdiutil detach "/Volumes/Sublime Text 2" > /dev/null
rm sublime.dmg
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Setting up symlink...'
sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin
open "/Applications/Sublime Text 2.app" && sleep 3 && killall "Sublime Text 2"
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing Package Control...'
curl "https://sublime.wbond.net/Package%20Control.sublime-package" -o "$HOME/Library/Application Support/Sublime Text 2/Installed Packages/Package Control.sublime-package" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing Solarized color scheme...'
curl "http://flatironschool.s3.amazonaws.com/curriculum/resources/environment/themes/Solarized%20Flatiron.zip" -o "$HOME/Library/Application Support/Sublime Text 2/Packages/Color Scheme - Default/Solarized Flatiron.zip" >/dev/null 2>&1
tar -zxvf "$HOME/Library/Application Support/Sublime Text 2/Packages/Color Scheme - Default/Solarized Flatiron.zip"
rm "$HOME/Library/Application Support/Sublime Text 2/Packages/Color Scheme - Default/Solarized Flatiron.zip"
echo -e "\033[34;32mDone.\033[0m"
