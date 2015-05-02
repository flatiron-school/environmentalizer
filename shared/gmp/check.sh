#!/bin/bash

if [ -n "$(brew ls --versions gmp 2> /dev/null)" ];then
  echo '1'
else
  echo '0'
fi
