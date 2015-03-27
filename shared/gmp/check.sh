#!/bin/bash

if [ -n "$(brew ls --versions gmp 2> /dev/null)" ];then
  echo 'installed'
fi
