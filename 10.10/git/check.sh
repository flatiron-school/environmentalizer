#!/bin/bash

if [[ $(which git) =~ ^/usr/local/bin/git$ ]]; then
  if [[ $(git --version) =~ ^.*2\.2|3.*$ ]]; then
    echo 'installed'
  fi
fi
