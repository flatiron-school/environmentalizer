#!/bin/bash

function is_homebrew_installed {
  if [[ $(/usr/bin/which brew) =~ ^/usr/local/bin/brew ]] && \
     [[ $(/usr/local/bin/brew --version 2>/dev/null) =~ ^0\.9\.[5-9] ]]
  then
    echo '1'
  else
    echo '0'
  fi
}

is_homebrew_installed
