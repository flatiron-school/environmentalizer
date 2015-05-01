#!/bin/bash

echo 'Installing Ruby...'
echo 'Installing Ruby' > /tmp/learninstall.step


if [[ -f $HOME/.rvm/scripts/rvm ]]; then
  . $HOME/.rvm/scripts/rvm
fi

if [[ $# -eq 0 ]]
then
  echo "Must supply password"
  exit 1
fi

expect <<-DONE
spawn rvm install ruby-2.2.1
expect -re "password required"
send "$1\n"
expect eof
DONE

echo -e "\033[34;32mDone.\033[0m"
