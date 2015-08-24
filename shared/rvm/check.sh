#!/bin/bash

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm

  rvm get head > /dev/null 2>&1
fi

if [[ -n "$(which rvm)" ]] && [[ -f "$HOME/.rvm/bin/rvm" ]]
then
  if [[ $(rvm --version 2> /dev/null) =~ 1\.26.* ]]
  then
    echo '1'
  else
    echo '0'
  fi
else
  echo '0'
fi
