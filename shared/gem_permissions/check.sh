#!/bin/bash

if [ $(stat $HOME/.rvm/gems | awk '{ print $3 }') = 'drwxr-xr-x' ]; then
  echo '1'
else
  echo '0'
fi
