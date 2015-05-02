#!/bin/bash

result=$(mdfind "kind:app chrome")

if [[ -n $result ]]; then
  echo '1'
else
  echo '0'
fi
