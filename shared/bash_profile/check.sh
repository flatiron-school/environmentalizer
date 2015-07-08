#!/bin/bash

if [ -f "$HOME/.bash_profile" ] && \
   [[ -n $(cat "$HOME/.bash_profile" 2>/dev/null | grep "export FLATIRON_VERSION='1.1'") ]]
then
  echo '1'
else
  echo '0'
fi
