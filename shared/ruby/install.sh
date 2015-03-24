#!/bin/bash

echo 'Installing Ruby...'

source $HOME/.rvm/scripts/rvm
rvm install ruby-2.2-head
rvm use --default ruby-2.2-head

echo -e "\033[34;32mDone.\033[0m"
