#!/bin/bash

if [[ -n "$(brew ls --versions git 2> /dev/null)" ]] &&\
   [[ "$(brew ls --versions git 2> /dev/null)" =~ ^.*2\.2|3.*$ ]]
then
  echo '1'
else
  echo '0'
fi
