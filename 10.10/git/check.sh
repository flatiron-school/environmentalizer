#!/bin/bash

if [[ -n $(which git) ]] && [[ $(git --version) =~ ^.*2\.2|3.*$ ]] && [[ $(which git) =~ ^/usr/local/bin/git$ ]]; then
  echo 'installed'
fi
