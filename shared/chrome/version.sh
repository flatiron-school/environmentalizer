#!/bin/bash
function chrome_version {
  if [[ $is_installed -eq true ]]; then
    echo $(ls "/Applications/Google Chrome.app/Contents/Versions/" | sort -n | tail -n 1)
  else
    echo false
  fi
}
