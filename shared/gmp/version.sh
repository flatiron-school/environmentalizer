#!/bin/bash
function gmp_version {
  if [[ -n $(is_homebrew_installed) ]]; then
    if $is_installed ; then
      echo $(brew ls --versions gmp | perl -lne 'print $& if /\d.*/')
    else
      echo false
    fi
  else
    echo false
  fi
}
