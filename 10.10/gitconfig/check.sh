#!/bin/bash

if [ -f "$HOME/.gitconfig" ] && [[ -n $(cat "$HOME/.gitconfig" 2>/dev/null | grep "st = status") ]]; then
  echo 'installed'
fi
