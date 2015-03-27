#!/bin/bash

. $HOME/.rvm/scripts/rvm 2>/dev/null

if [ -n '$(which learn | grep "$HOME/\.rvm/gems/.*")' ] && \
   [ -n "$(gem which learn 2>/dev/null)" ]
then
  echo 'installed'
fi
