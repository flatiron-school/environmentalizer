#!/bin/bash

. $HOME/.rvm/scripts/rvm 2>/dev/null

if [[ -n $(which rvm) ]] && \
   [[ -n $(rvm list | grep ruby-2.2) ]]
then
  echo 'installed'
fi
