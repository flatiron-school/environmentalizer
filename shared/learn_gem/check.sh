#!/bin/bash

source_rvm

if [ -n '$(which learn | grep "$HOME/\.rvm/gems/.*")' ] && \
   [ -n "$(gem which learn 2>/dev/null)" ]
then
  echo 'installed'
fi
