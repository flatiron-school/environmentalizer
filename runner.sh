#!/bin/bash

os_version=$(sw_vers -productVersion)

echo 'Determining OS X version...'
if [[ $os_version =~ ^10\.9|10\.[0-9]*$ ]] || [[ $os_version =~ ^10\.9|10$ ]]; then
  echo 'Downloading source code...'
  cd ~
  curl -L "https://github.com/flatiron-labs/environmentalizer/archive/curl.zip" > "$HOME/environmentalizer.zip"
  unzip -qq "$HOME/environmentalizer.zip" 1>&2 2>/dev/null
  cd environmentalizer-curl
  . ./shared/bootstrap.sh
  cd ..
  rm -rf environmentalizer-curl
  rm environmentalizer.zip
else
  echo 'Not a supported OS X version'
  exit 1
fi
