#!/bin/bash

result=$(mdfind "kind:app sublime text")

if [[ -n $result ]]; then
  echo 'installed'
fi
