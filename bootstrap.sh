#!/bin/bash

function copyBashProfile {
  echo 'Getting Flatiron School .bash_profile...'
  cd ~
  
  if [ -f .bash_profile ]; then
    mv .bash_profile .bash_profile.old
  fi

  curl "http://bit.ly/flatiron-school-bash-profile" -o ".bash_profile"
}

# copyBashProfile
