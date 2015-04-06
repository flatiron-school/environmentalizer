#!/bin/bash
function homebrew_version {
  if [[ $is_installed -eq true ]]; then
    echo $(brew --version | perl -lne 'print $& if /\d.*/')
  else
    echo false
  fi
}
