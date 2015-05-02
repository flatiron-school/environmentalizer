#!/bin/bash

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi

if [ -n '$(which learn | grep "$HOME/\.rvm/gems/.*")' ] && \
   [ -n "$(gem which learn 2>/dev/null)" ]
then
  echo '1'
else
  echo '0'
fi
