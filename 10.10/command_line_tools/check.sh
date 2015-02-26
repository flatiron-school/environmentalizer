#!/bin/bash

if [ -n "$(which gcc)" ] && [ -f '/usr/bin/gcc' ]; then
  echo 'installed'
fi
