#!/bin/bash

if [[ -f "$HOME/.gemrc" ]]; then
  echo '1'
else
  echo '0'
fi
