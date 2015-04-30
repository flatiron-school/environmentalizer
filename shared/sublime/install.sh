#!/bin/bash

echo 'Installing Sublime Text...'

if [ -f sublime.dmg ]; then
  rm sublime.dmg
fi

sublime_settings_path="$HOME/Library/Application Support/Sublime Text 3"
sublime_color_theme_path="${sublime_settings_path}/Packages/Colorsublime-Themes"
current_dir=$PWD

echo -n 'Downloading...'
echo 'Downloading Sublime Text' > /tmp/learninstall.step

curl "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203083.dmg" -o "sublime.dmg" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing...'
echo 'Installing Sublime Text' > /tmp/learninstall.step

hdiutil attach -nobrowse sublime.dmg > /dev/null
cp -r "/Volumes/Sublime Text/Sublime Text.app" "/Applications/Sublime Text.app"
hdiutil detach "/Volumes/Sublime Text" > /dev/null
rm sublime.dmg
echo -e "\033[34;32mDone.\033[0m"

echo 'Installing Sublime Text Package Control' > /tmp/learninstall.step

echo -n 'Installing Package Control...'
open "/Applications/Sublime Text.app" && sleep 3 && killall "Sublime Text"
curl "https://packagecontrol.io/Package%20Control.sublime-package" -o "${sublime_settings_path}/Installed Packages/Package Control.sublime-package" >/dev/null 2>&1
curl "https://github.com/EnTeQuAk/dotfiles/blob/master/sublime-text-3/Installed%20Packages/0_package_control_loader.sublime-package?raw=true" -o "${sublime_settings_path}/Installed Packages/0_package_control_loader.sublime-package" >/dev/null 2>&1
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing Solarized color scheme...'
echo 'Installing Sublime Text Solarized Color Scheme' > /tmp/learninstall.step

mkdir "${sublime_color_theme_path}"
curl "http://flatironschool.s3.amazonaws.com/curriculum/resources/environment/themes/Solarized%20Flatiron.zip" -o "${sublime_color_theme_path}/Solarized Flatiron.zip" >/dev/null 2>&1
cd "${sublime_color_theme_path}"
tar -zxvf "${sublime_color_theme_path}/Solarized Flatiron.zip"
rm "Solarized Flatiron.zip" "Solarized Dark (Flatiron).terminal" "Solarized Light (Flatiron).terminal"
cd "${current_dir}"
echo -e "\033[34;32mDone.\033[0m"
