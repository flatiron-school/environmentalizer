#!/bin/bash

if  [ -f "$HOME/.ssh/known_hosts" ] && \
    [[ -n $(cat "$HOME/.ssh/known_hosts" 2>/dev/null | grep github.com) ]]
then
  echo '1'
else
  echo '0'
fi
