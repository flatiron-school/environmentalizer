#!/bin/bash

sublime_two_settings="$HOME/Library/Application Support/Sublime Text 2/Packages/Default/Preferences.sublime-settings"
sublime_three_settings="$HOME/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"

if [ -f "${sublime_two_settings}" ]; then
  if [ -n "$(cat "${sublime_two_settings}" 2>/dev/null | grep '\"tab_size\": 2')" ] && \
     [ -n "$(cat "${sublime_two_settings}" 2>/dev/null | grep '\"translate_tabs_to_spaces\": true')" ]
  then
    echo '1'
  else
    echo '0'
  fi
elif [ -f "${sublime_three_settings}" ]; then
  if [ -n "$(cat "${sublime_three_settings}" 2>/dev/null | grep '\"tab_size\": 2')" ] && \
     [ -n "$(cat "${sublime_three_settings}" 2>/dev/null | grep '\"translate_tabs_to_spaces\": true')" ]
  then
    echo '1'
  else
    echo '0'
  fi
fi
