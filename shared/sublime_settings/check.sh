#!/bin/bash

echo 'Checking Sublime Text Settings...'
if [ -n "$(cat "$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings" | grep '\"tab_size\": 2')" ] && \
   [ -n "$(cat "$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings" | grep '\"translate_tabs_to_spaces\": true')" ]
then
  echo 'installed'
fi
