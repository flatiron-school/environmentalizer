#!/bin/bash
function sublime_version {
  if $is_installed ; then
    if [[ -n $(mdfind kind:app "Sublime Text.app") ]]; then
      echo $(cat "/Applications/Sublime Text.app/Contents/Info.plist" | perl -lne 'print $& if /Build\s(\d.*?)\</' | perl -lne 'print $& if /(\d.*)[^<]/')
    else
      echo $(cat "/Applications/Sublime Text 2.app/Contents/Info.plist" | perl -lne 'print $& if /Build\s(\d.*?)\</' | perl -lne 'print $& if /(\d.*)[^<]/')
    fi
  else
    echo false
  fi
}
