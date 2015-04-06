#!/bin/bash
function learn_gem_version {
  source_rvm
  if $is_installed ; then
    echo $(gem list | grep learn | perl -lne 'print $& if /(\d.*)[^\)]/')
  else
    echo false
  fi
}
