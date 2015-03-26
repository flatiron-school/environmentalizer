#!/bin/bash

os_version=$(sw_vers -productVersion)

echo 'Determining OS X version...'
if [[ $os_version =~ ^10\.9|10\.[0-9]*$ ]] || [[ $os_version =~ ^10\.9|10$ ]]; then
  echo 'Downloading source code...'
  cd ~
  curl -L "https://github.com/flatiron-labs/environmentalizer/archive/master.zip" > master.zip
  unzip master.zip 1>&2 2>/dev/null
  cd environmentalizer-master
  . ./shared/bootstrap.sh
  cd ..
  rm -rf environmentalizer-master
  rm master.zip
else
  echo 'Not a supported OS X version'
  exit 1
fi
