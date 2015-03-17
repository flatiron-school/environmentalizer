#!/bin/bash

if [ -n "$(brew ls --versions postgresql 2> /dev/null)" ] && \
   [[ $(which postgres) =~ ^/usr/local/bin/postgres$ ]] && \
   [[ $(postgres --version 2> /dev/null) =~ ^9\.3|4.*$ ]] && \
   [ -n $(mdfind "kind:app Postgres") ] && \
   [[ $(gem which pg 2> /dev/null) =~ ^/Users/.*/\.rvm/gems/.*$ ]] && \
   [ -n "$(gem list | grep pg)" ]
then
  echo 'installed'
fi
