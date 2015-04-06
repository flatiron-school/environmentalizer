#!/bin/bash
function homebrew_version {
  if [[ -n $(is_homebrew_installed) ]]; then
    echo $(brew --version | perl -lne 'print $& if /\d.*/')
  else
    echo false
  fi
}
