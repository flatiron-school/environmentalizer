#!/bin/bash

if [ -n "$(brew ls --versions gmp 2> /dev/null)" ] && \
   [[ $(which gmp) =~ ^/usr/local/bin/gmp$ ]]
then
  echo 'installed'
fi
