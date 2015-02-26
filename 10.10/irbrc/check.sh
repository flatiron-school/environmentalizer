#!/bin/bash

if [ -f "$HOME/.irbrc" ] && \
   [[ -n $(cat "$HOME/.irbrc" 2> /dev/null | grep "\- Object.instance_methods") ]]
then
  echo 'installed'
fi
