#!/bin/bash

echo 'Installing PhantomJS...'

brew install phantomjs 2>/dev/null || brew update 1>&2 2>/dev/null && brew upgrade phantomjs 2>/dev/null
echo -e "\033[34;32mDone.\033[0m"
