#!/bin/bash

result=$(mdfind "kind:app sublime text")

if [[ -n $result ]]; then
  echo '1'
else
  echo '0'
fi
