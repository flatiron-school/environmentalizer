#!/bin/bash

if [[ $(postgres --version 2> /dev/null) =~ 9.4.*$ ]]; then
  echo '1'
else
  echo '0'
fi
