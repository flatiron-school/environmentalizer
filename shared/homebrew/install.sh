#!/bin/bash

echo 'Installing Homebrew...'

if [[ $# -eq 0 ]]
then
  echo "Must supply password"
  exit 1
fi

# Remove brew's git dir if it exists, otherwise installation will fail
if [ $(ls /usr/local/.git 2>/dev/null | wc -l) -gt 0 ]
then
  echo 'Removing left over brew files...'
  rm -rf /usr/local/.git && brew cleanup
fi

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install -o $HOME/homebrew.rb
expect <<- DONE
spawn ruby $HOME/homebrew.rb
expect -re "RETURN"
send "\n"
expect "Password:"
send "$1\n"
expect eof
DONE

rm $HOME/homebrew.rb

echo -e "\033[34;32mDone.\033[0m"
