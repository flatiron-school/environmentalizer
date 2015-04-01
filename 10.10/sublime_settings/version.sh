#!/bin/bash
. ./shared/sublime_settings/version.sh

for dir in 10.9/*; do
  end=${#dir}
  dir_name=${dir:5:end}
  echo ". ./shared/$dir_name/version.sh" >> "$dir/version.sh"
done