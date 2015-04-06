#!/bin/bash
function rvm_version {
  if [[ $is_installed -eq true ]]; then
    echo $(rvm --version | perl -lne 'print $& if /(\d.*?)\s/')
  else
    echo false
  fi
}
