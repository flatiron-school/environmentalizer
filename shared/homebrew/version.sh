#!/bin/bash
function homebrew_version {
  if [[ $(is_homebrew_installed) -eq "installed" ]]; then
    echo $(brew --version | perl -lne 'print $& if /\d.*/')
  else
    echo false
  fi
}
