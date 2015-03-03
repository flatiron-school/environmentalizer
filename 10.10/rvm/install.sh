#!/bin/bash

echo 'Installing RVM...'
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
echo -e "\033[34;32mDone.\033[0m"
