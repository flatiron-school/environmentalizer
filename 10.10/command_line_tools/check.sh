#!/bin/bash

# TODO: Make this actually work
if [ -n "$(which gcc)" ] && [ -f '/usr/bin/gcc' ]; then
  echo 'installed'
else
  echo 'please install command line tools'
  exit 1
fi
