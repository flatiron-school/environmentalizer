#!/bin/bash

if [ -f "$HOME/.irbrc" ] && \
   [[ -n $(cat "$HOME/.irbrc" 2> /dev/null | grep "\- Object.instance_methods") ]]
then
  echo '1'
else
  echo '0'
fi
