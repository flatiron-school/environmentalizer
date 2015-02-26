#!/bin/bash

if [ -n "$(brew ls --versions phantomjs 2> /dev/null)" ] && \
   [[ $(which phantomjs) =~ ^/usr/local/bin/phantomjs$ ]] && \
   [[ $(phantomjs --version 2> /dev/null) =~ ^1\.9\.[7-9]$ ]]
then
  echo 'installed'
fi
