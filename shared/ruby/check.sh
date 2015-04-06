#!/bin/bash

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi

if [[ -n $(which rvm) ]] && \
   [[ -n $(rvm list | grep ruby-2.2) ]]
then
  echo 'installed'
fi
