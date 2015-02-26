#!/bin/bash

echo 'Checking Command Line Tools...'

if [ -n "$(which gcc)" ] && [ -f '/usr/bin/gcc' ]; then
  echo 'installed'
fi
