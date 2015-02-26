#!/bin/bash

result=$(mdfind "kind:app sublime")

if [[ -n $result ]]; then
  echo 'installed'
fi
