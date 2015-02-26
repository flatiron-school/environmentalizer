#!/bin/bash

echo 'Checking .bash_profile...'

if [ -f "$HOME/.bash_profile" ] && [[ -n $(cat "$HOME/.bash_profile" 2>/dev/null | grep "export VISUAL=\"subl") ]]; then
  echo 'installed'
fi
