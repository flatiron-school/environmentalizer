#!/bin/bash

if [[ -n $(which rvm) ]] && \
   [[ -n $(rvm list 2>/dev/null | grep ruby-2. )]] || \
   [[ ! -n $(which rvm) ]]
then
  echo 'installed'
fi
