#!/bin/bash
function rvm_version {
  if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi
  if $is_installed ; then
    echo $(rvm --version | perl -lne 'print $& if /(\d.*?)\s/')
  else
    echo false
  fi
}
