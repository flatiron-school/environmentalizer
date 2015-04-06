#!/bin/bash

source_rvm

if [[ -n $(which rvm) ]] && \
   [[ -n $(rvm list | grep ruby-2.2) ]]
then
  echo 'installed'
fi
