#!/bin/bash

os_version=$(sw_vers -productVersion)

if [[ $os_version =~ ^10\.9|10\.[0-9]*$ ]] || [[ $os_version =~ ^10\.9|10$ ]]; then
  echo 'Picking correct bootstrap script...'

  if [[ $os_version =~ ^10\.9.*$ ]]; then
    ./bootstrap.10.9.sh
  else
    ./bootstrap.10.10.sh
  fi
else
  echo 'Not a supported OS X version'
  exit 1
fi
