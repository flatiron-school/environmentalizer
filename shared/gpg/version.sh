#!/bin/bash
function gpg_version {
  if [[ -n $(is_homebrew_installed) ]]; then
    if $is_installed ; then
      echo $(brew ls --versions gnupg | perl -lne 'print $& if /\d.*/')
    else
      echo false
    fi
  else
    echo false
  fi
}
