#!/bin/bash

echo 'Installing Learn XCPretty gem...'
echo 'Installing Learn XCPretty gem' > /tmp/learninstall.step

if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi
gem install learn-xcpretty

echo -e "\033[34;32mDone.\033[0m"
