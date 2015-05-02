#!/bin/bash

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi

if [[ -n "$(which learn-xcpretty)" ]];
then
  echo '1'
else
  echo '0'
fi
