#!/bin/bash

echo 'Installing Learn gem...'

source $HOME/.rvm/scripts/rvm
gem sources -a http://flatiron:33west26@gems.flatironschool.com
gem install learn

echo -e "\033[34;32mDone.\033[0m"
