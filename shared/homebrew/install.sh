#!/bin/bash

echo 'Installing Homebrew...'
echo 'Installing Homebrew' > /tmp/learninstall.step

if [[ $# -eq 0 ]]
then
  echo "Must supply password"
  exit 1
fi

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install -o homebrew.rb
expect <<- DONE
spawn ruby homebrew.rb
expect -re "RETURN"
send "\n"
expect "Password:"
send "$1\n"
expect eof
DONE

rm homebrew.rb

echo -e "\033[34;32mDone.\033[0m"
