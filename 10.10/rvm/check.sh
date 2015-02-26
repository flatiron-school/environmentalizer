#!/bin/bash

if [ -n "$(which rvm)" ] && [ -f "$HOME/.rvm/bin/rvm" ]; then
  if [[ $(rvm --version) =~ 1\.2|3.* ]]; then
    echo 'installed'
  fi
fi
