#!/bin/bash

os_version=$(sw_vers -productVersion)

if [[ $os_version =~ ^10\.9|10\.[0-9]*$ ]] || [[ $os_version =~ ^10\.9|10$ ]]; then
  echo 'Determining OS X version...'
  . ./shared/bootstrap.sh
else
  echo 'Not a supported OS X version'
  exit 1
fi
