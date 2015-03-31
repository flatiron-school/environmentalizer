#!/bin/bash

if [ -n "$(which sqlite3)" ] && [ -f '/usr/bin/sqlite3' ] && \
   [[ $(sqlite3 --version 2> /dev/null) =~ ^3|4\.8|9.*$ ]]
then
  echo 'installed'
fi
