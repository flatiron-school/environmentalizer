#!/bin/bash

xcode-select -p 1>&2 2> /dev/null; are_cli_installed=$?
if [[ $are_cli_installed -eq 0 ]]; then
  echo '1'
else
  echo '0'
fi
