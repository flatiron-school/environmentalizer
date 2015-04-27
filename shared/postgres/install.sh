#!/bin/bash

# TODO: Install Postgres App and make symlink

echo 'Installing Postgres...'
echo 'Installing Postgres' > /tmp/learninstall.step

brew install postgres
echo -e "\033[34;32mDone.\033[0m"
