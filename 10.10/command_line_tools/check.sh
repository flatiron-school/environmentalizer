#!/bin/bash

if [ -n "$(which gcc)" ] && [ -f '/usr/bin/gcc' ] && \
   [ -d '/Applications/Xcode.app' ]
then
  echo 'installed'
fi
