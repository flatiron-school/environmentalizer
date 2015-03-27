#!/bin/bash

echo 'Installing git...'
{ # try
  brew install git 2>/dev/null &&
} || { # catch
  brew update 1>&2 2>/dev/null && brew upgrade git 2>/dev/null
}
echo -e "\033[34;32mDone.\033[0m"
