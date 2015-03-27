#!/bin/bash

sublime_two_settings="$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings"
sublime_three_settings="$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

if [ -f "${sublime_two_settings}" ] || [ -f "${sublime_three_settings}" ]; then
  if [ -n "$(cat "${sublime_two_settings}" | grep '\"tab_size\": 2')" ] && \
     [ -n "$(cat "${sublime_two_settings}" | grep '\"translate_tabs_to_spaces\": true')" ] || \
     [ -n "$(cat "${sublime_three_settings}" | grep '\"tab_size\": 2')" ] && \
     [ -n "$(cat "${sublime_three_settings}" | grep '\"translate_tabs_to_spaces\": true')" ]
  then
    echo 'installed'
  fi
fi
