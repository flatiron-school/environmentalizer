#!/bin/bash

if [ -f "$HOME/.gemrc" ] && [[ -n $(cat "$HOME/.gemrc" 2>/dev/null | grep flatiron) ]]; then
  echo 'installed'
fi
