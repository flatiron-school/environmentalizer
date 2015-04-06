#!/bin/bash
function phantom_js_version {
  if $is_installed ; then
    echo $(brew ls --versions phantomjs | perl -lne 'print $& if /\d.*/')
  else
    echo false
  fi
}
