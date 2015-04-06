#!/bin/bash
function rvm_version {
  source_rvm
  if $is_installed ; then
    echo $(rvm --version | perl -lne 'print $& if /(\d.*?)\s/')
  else
    echo false
  fi
}
