#!/bin/bash

echo 'Installing Ruby...'

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
  rvm get head
fi

if [[ $# -eq 0 ]]
then
  echo "Must supply password"
  exit 1
fi

expect <<-DONE
set timeout 120
spawn rvm install ruby-2.2.3
expect -re "password required for"
send "$1\n"
expect eof
DONE

rvm use 2.2.3 --default

echo -e "\033[34;32mDone.\033[0m"
