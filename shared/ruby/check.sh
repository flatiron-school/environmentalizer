#!/bin/bash

if [[ -n $(which rvm) ]] && \
   [[ -n $(rvm list 2>/dev/null | grep ruby-2. )]] || \
   [[ $(which rvm) -eq '' ]]
then
  echo 'installed'
fi
