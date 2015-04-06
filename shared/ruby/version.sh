#!/bin/bash
function ruby_version {
  if [[ -f $HOME/.rvm/scripts/rvm ]]; then
    . $HOME/.rvm/scripts/rvm
  fi
  echo $(ruby --version | perl -lne 'print $& if /(\d.*?)\s/')
}
