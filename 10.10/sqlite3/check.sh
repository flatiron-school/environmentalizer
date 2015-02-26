#!/bin/bash

if [ -n "$(which sqlite3)" ] && [ -f '/usr/bin/sqlite3' ]; then
  if [[ $(sqlite3 --version) =~ ^3|4\.8|9.*$ ]]; then
    echo 'installed'
  fi
fi
