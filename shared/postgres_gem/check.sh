#!/bin/bash

if [[ $(postgres --version 2> /dev/null) =~ 9.4.*$ ]] && \
   [[ $(gem which pg 2> /dev/null) =~ ^/Users/.*/\.rvm/gems/.*$ ]] && \
   [ -n "$(gem list | grep pg)" ]
then
  echo '1'
else
  echo '0'
fi
