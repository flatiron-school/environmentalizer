#!/bin/bash

function copyBashProfile {
  echo 'Getting Flatiron School .bash_profile...'
  cd ~
  
  if [ -f .bash_profile ]; then
    mv .bash_profile .bash_profile.old
  fi

  curl "http://bit.ly/flatiron-school-bash-profile" -o ".bash_profile"
}

function getCommandLineTools {
  echo 'Downloading command line tools...'
  cd ~

  if [ -f cli_tools.dmg ]; then
    rm cli_tools.dmg
  fi

  curl "http://bit.ly/flatiron-gcc" -o "cli_tools.dmg"
}

function installCommandLineTools {
  echo 'Installing command line tools...'
  cd ~

  hdiutil attach cli_tools.dmg
  installer -pkg "/Volumes/Command Line Developer Tools/Command Line Tools (OS X 10.9).pkg" -target "/Volumes/Macintosh HD"
  hdiutil detach "/Volumes/Command Line Developer Tools"
  rm cli_tools.dmg
}

# copyBashProfile
# getCommandLineTools
# installCommandLineTools
