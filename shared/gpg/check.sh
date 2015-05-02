#!/bin/bash

if [ -n "$(brew ls --versions gnupg 2> /dev/null)" ] && \
   [[ $(which gpg) =~ ^/usr/local/bin/gpg$ ]]
then
  echo '1'
else
  echo '0'
fi
