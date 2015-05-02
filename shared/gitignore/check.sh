#!/bin/bash

if [ -f "$HOME/.gitignore" ] && \
   [[ -n $(cat "$HOME/.gitignore" 2>/dev/null | grep .DS_Store) ]]
then
  echo '1'
else
  echo '0'
fi
