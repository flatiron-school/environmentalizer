#!/bin/bash

if [[ $(gem which pg 2> /dev/null) =~ ^/Users/.*/\.rvm/gems/.*$ ]] && \
   [ -n "$(gem list | grep pg)" ]
then
  echo '1'
else
  echo '0'
fi
