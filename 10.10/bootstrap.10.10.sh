#!/bin/bash

source "./config/environment.sh"

echo 'Running script for 10.10.x'
echo 'Checking existing environment...'

set -e

installation_checklist=($(cat ./10.10/installation.list))
checklist_length=${#installation_checklist[@]}
already_installed=()
to_be_installed=()
is_installed=false

for (( i=0; i<${checklist_length}; i++ )); do
  checkInstallation ${installation_checklist[i]}

  if [ $is_installed == true ]; then # if checkInstallation returned true (0)
    already_installed[${#already_installed[@]}]=${installation_checklist[i]}
  else  # if checkInstallation returned false (1)
    to_be_installed[${#to_be_installed[@]}]=${installation_checklist[i]}
  fi
done

echo "To Be Installed: ${#to_be_installed[@]}"
echo "Already Installed: ${#already_installed[@]}"

to_be_installed_length=${#to_be_installed[@]}

echo 'Setting up environment...'

if [[ "$1" -eq "install" ]]; then
  for (( i=0; i<${to_be_installed_length}; i++ )); do
    ./10.10/${to_be_installed[i]}/install.sh
    echo ${to_be_installed[i]}
  done
  echo 'Done!'
fi
