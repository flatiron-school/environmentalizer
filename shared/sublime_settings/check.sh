#!/bin/bash

sublime_two_settings="$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings"
sublime_three_settings="$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

echo 'Checking Sublime Text Settings...'
if [ -n "$(cat $HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings | grep '\"tab_size\": 2')" ] && \
   [ -n "$(cat $HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings | grep '\"translate_tabs_to_spaces\": true')" ] || \
   [ -n "$(cat $HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings | grep '\"tab_size\": 2')" ] && \
   [ -n "$(cat $HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings | grep '\"translate_tabs_to_spaces\": true')" ]
then
  echo 'installed'
fi
