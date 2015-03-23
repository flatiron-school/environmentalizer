#!/bin/bash

# TODO: Make this actually work
xcode-select -p; isInstalled
if [[ $isInstalled -eq 0 ]]; then
  echo 'installed'
fi
