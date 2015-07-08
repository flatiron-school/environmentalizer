#!/bin/bash
function postgres_gem_version {
  if [[ -f $HOME/.rvm/scripts/rvm ]]; then
    . $HOME/.rvm/scripts/rvm
  fi

  if $is_installed ; then
    echo $(gem list | grep pg | perl -lne 'print $& if /(\d.*)[^\)]/')
  else
    echo false
  fi
}
