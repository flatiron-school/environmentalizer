#!/bin/bash

result=$(mdfind "kind:app chrome")

if [[ -n $result ]]; then
  echo 'installed'
fi
