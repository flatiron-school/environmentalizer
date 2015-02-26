#!/bin/bash

if [[ $(which brew) =~ ^/usr/local/bin/brew ]] && \
   [[ $(brew --version 2>/dev/null) =~ ^0\.9\.[5-9]$ ]]
then
  echo 'installed'
fi
