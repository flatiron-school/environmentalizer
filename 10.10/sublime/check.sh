#!/bin/bash

echo 'Checking Sublime Text...'

result=$(mdfind "kind:app sublime")

if [[ -n $result ]]; then
  echo 'installed'
fi
