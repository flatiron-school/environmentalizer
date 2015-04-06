#!/bin/bash

os_version=$(sw_vers -productVersion)

echo 'Determining OS X version...'
if [[ $os_version =~ ^10\.9|10\.[0-9]*$ ]] || [[ $os_version =~ ^10\.9|10$ ]]; then
  echo 'Downloading source code...'
  cd ~
  curl -L "https://github.com/flatiron-school/environmentalizer/archive/versions.zip" > "$HOME/environmentalizer.zip"
  unzip -qq "$HOME/environmentalizer.zip" 1>&2 2>/dev/null
  cd environmentalizer-versions
  . ./shared/bootstrap.sh
  cd ..
  rm -rf environmentalizer-versions
  rm environmentalizer.zip
else
  echo "\033[1;31mNot a supported OS X version\033[0m"
  echo 'Please upgrade to OS X Mavericks or later to proceed'
  exit 1
fi
