#!/bin/bash
function learn_xcpretty_gem_version {
  if [[ -f $HOME/.rvm/scripts/rvm ]]; then
    . $HOME/.rvm/scripts/rvm
  fi

  if $is_installed ; then
    echo $(gem list | grep learn-xcpretty | perl -lne 'print $& if /(\d.*)[^\)]/')
  else
    echo false
  fi
}
