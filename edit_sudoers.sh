#!/bin/bash

cd ~

sudo cp /etc/sudoers /etc/sudoers.bak
sudo cp /etc/sudoers /etc/sudoers.tmp

sudo chmod 0640 /etc/sudoers.tmp
sudo echo "$1 ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.tmp
sudo chmod 0440 /etc/sudoers.tmp

sudo mv /etc/sudoers.tmp /etc/sudoers

exit 0
