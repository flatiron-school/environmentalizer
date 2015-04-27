#!/bin/bash

sublime_two_settings="$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings"
sublime_three_settings="$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

echo 'Setting up Sublime Text settings' > /tmp/learninstall.step

echo -n 'Setting up basic Sublime Text settings...'
if [[ -f "${sublime_two_settings}" ]]; then
  sed -i '' "s/\"tab_size\": 4,/\"tab_size\": 2,/g" "${sublime_two_settings}"
  sed -i '' "s/\"translate_tabs_to_spaces\": false,/\"translate_tabs_to_spaces\": true,/g" "${sublime_two_settings}"
fi
if [[ -f "${sublime_three_settings}" ]]; then
  mv "${sublime_three_settings}" "${sublime_three_settings}.bak"
  curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/OSX-Preferences.sublime-settings" -o "${sublime_three_settings}"
else
  curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/OSX-Preferences.sublime-settings" -o "${sublime_three_settings}"
fi
echo -e "\033[34;32mDone.\033[0m"
