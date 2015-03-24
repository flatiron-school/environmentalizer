#!/bin/bash

if [[ -n $(which rvm) ]] && \
   [[ -n $(rvm list 2>/dev/null | grep ruby-2. )]] || \
   [[ $(which rvm 2>/dev/null) -eq '' ]]
then
  echo 'installed'
fi
