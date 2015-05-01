#!/bin/bash

echo 'Installing Homebrew...'
echo 'Installing Homebrew' > /tmp/learninstall.step

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install -o homebrew.rb
expect <<- DONE
spawn ruby homebrew.rb
expect -re "RETURN"
send "\n"
expect eof
DONE

rm homebrew.rb

echo -e "\033[34;32mDone.\033[0m"
