#!/bin/bash

default_already_set=$(defaults read com.apple.dt.Xcode DVTTextShowLineNumbers 2>/dev/null)

if [ "$default_already_set" != "1" ] && [ "$default_already_set" != "YES" ]; then
  echo '0'
else
  echo '1'
fi
