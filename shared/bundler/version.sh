#!/bin/bash
function learn_gem_version {
  if [[ -f $HOME/.rvm/scripts/rvm ]]; then
    . $HOME/.rvm/scripts/rvm
  fi

  if $is_installed ; then
    echo $(gem list | grep bundler | perl -lne 'print $& if /(\d.*)[^\)]/')
  else
    echo false
  fi
}
