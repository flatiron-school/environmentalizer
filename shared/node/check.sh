#!/bin/bash

if [[ -n "$(node -v 2> /dev/null)" ]] &&\
   [[ -n "$(npm -v 2> /dev/null)" ]]
then
  echo '1'
else
  echo '0'
fi

