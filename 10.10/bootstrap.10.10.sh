#!/bin/bash

echo 'Running script for 10.10.x'
echo 'Checking existing environment...'

set -e

installation_checklist=($(cat ./10.10/installation.list))
checklist_length=${#installation_checklist[@]}
already_installed=()
to_be_installed=()
is_installed=false

function checkInstallation {
  printf "Checking for $1... "

  installation=$(./10.10/$1/check.sh)

  if [[ ${installation} =~ ^.*installed$ ]]; then
    echo -e "\033[34;32minstalled\033[0m"
    is_installed=true
  else
    echo -e "\033[1;31mnot installed\033[0m"
    is_installed=false
  fi
}

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

if [ "$1" -eq "install" ]; then
  for (( i=0; i<${to_be_installed_length}; i++ )); do
    # TODO: Handle this better...this is garbaggio
    if [ "${to_be_installed[i]}" -eq "command_line_tools" ]; then
      continue
    else
      # actually installs the code
      # ./10.10/${to_be_installed[i]}/install.sh
      echo $to_be_installed[i]
    fi
  done
fi
