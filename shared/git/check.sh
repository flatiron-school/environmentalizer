#!/bin/bash

if [[ -n "$(/usr/local/bin/brew ls --versions git 2> /dev/null)" ]] &&\
   [[ "$(/usr/local/bin/brew ls --versions git 2> /dev/null)" =~ ^.*2\.4\..*$ ]]
then
  echo '1'
else
  echo '0'
fi
