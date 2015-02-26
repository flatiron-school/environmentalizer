#!/bin/bash

echo 'Checking SQLite3...'

if [ -n "$(which sqlite3)" ] && [ -f '/usr/bin/sqlite3' ]; then
  if [[ $(sqlite3 --version) =~ ^3\.8.*$ ]]; then
    echo 'installed'
  fi
fi
