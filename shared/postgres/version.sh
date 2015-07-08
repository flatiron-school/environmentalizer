#!/bin/bash
function postgres_version {
  if $is_installed ; then
    echo $(postgres --version | perl -lne 'print $& if /\d.*/')
  else
    echo false
  fi
}
