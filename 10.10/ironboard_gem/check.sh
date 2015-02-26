#!/bin/bash

if [ -n '$(which ironboard | grep "$HOME/\.rvm/gems/.*")' ] && [ -n "$(gem which ironboard 2>/dev/null)" ]; then
  echo 'installed'
fi
