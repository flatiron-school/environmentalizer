#!/bin/bash

source $HOME/.rvm/scripts/rvm
if [[ $(ruby --version 2> /dev/null) =~ ^ruby\ 2.*$ ]] && \
   [[ $(which ruby) =~ ^/Users/.*/\.rvm/rubies/.*$ ]]
then
  echo 'installed'
fi
