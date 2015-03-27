#!/bin/bash

. $HOME/.rvm/scripts/rvm 2>/dev/null

if [[ -n "$(which rvm)" ]] && [[ -f "$HOME/.rvm/bin/rvm" ]] && \
   [[ $(rvm --version 2> /dev/null) =~ 1\.2|3.* ]]
then
  echo 'installed'
fi
