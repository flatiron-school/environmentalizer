#!/bin/bash

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi

if [ -n '$(which learn-xcpretty | grep "$HOME/\.rvm/gems/.*")' ] && \
   [ -n "$(gem which learn-xcpretty 2>/dev/null)" ]
then
  echo 'installed'
fi
