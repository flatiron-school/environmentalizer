#!/bin/bash

if [ -n "$(which gcc)" ] && [ -f '/usr/bin/gcc' ] && \
   [ -f '/Applications/Xcode.app' ]
then
  echo 'installed'
fi
