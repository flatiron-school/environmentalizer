#!/bin/bash

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi

if [[ -n "$(which rvm)" ]] && [[ -f "$HOME/.rvm/bin/rvm" ]] && \
   [[ $(rvm --version 2> /dev/null) =~ 1\.2|3.* ]]
then
  echo 'installed'
fi
