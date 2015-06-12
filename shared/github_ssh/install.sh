#!/bin/bash

/usr/bin/expect <<EOD
spawn git clone git@github.com:flatiron-school/environmentalizer.git ~/environmentalizer_learn_ssh_test
expect -re "(continue)"
send "yes\n"
expect eof
EOD

rm -rf ~/environmentalizer_learn_ssh_test
