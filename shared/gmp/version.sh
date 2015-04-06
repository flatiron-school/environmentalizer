#!/bin/bash
function gmp_version {
  if [[ $is_installed -eq true ]]; then
    echo $(brew ls --versions gmp | perl -lne 'print $& if /\d.*/')
  else
    echo false
  fi
}
