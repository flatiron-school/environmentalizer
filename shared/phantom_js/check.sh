#!/bin/bash

if [ -n "$(brew ls --versions phantomjs 2> /dev/null)" ] && \
   [[ $(which phantomjs) =~ ^/usr/local/bin/phantomjs$ ]]
then
  echo 'installed'
fi
