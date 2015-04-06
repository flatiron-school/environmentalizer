#!/bin/bash
function learn_gem_version {
  if $is_installed ; then
    echo $(gem list | grep learn | perl -lne 'print $& if /(\d.*)[^\)]/')
  else
    echo false
  fi
}
