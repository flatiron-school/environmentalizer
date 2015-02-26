#!/bin/bash

if [[ $(ruby --version 2> /dev/null) =~ ^ruby\ 2.*$ ]] && \
   [[ $(which ruby) =~ ^/Users/.*/\.rvm/rubies/.*$ ]]
then
  echo 'installed'
fi
