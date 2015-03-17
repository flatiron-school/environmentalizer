#!/bin/bash

echo -n 'Setting up basic Sublime Text settings...'
sed -i '' "s/\"tab_size\": 4,/\"tab_size\": 2,/g" "$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings"
sed -i '' "s/\"translate_tabs_to_spaces\": false,/\"translate_tabs_to_spaces\": true,/g" "$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings"
echo -e "\033[34;32mDone.\033[0m"
