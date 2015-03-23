#!/bin/bash

echo 'Running script for 10.10.x'
echo 'Checking existing environment...'

xcode-select -p; areCLTInstalled=$?
xcodePath=$(mdfind "kind:app xcode")
if [[ $areCLTInstalled -eq 0 ]] && [[ -n $xcodePath ]]; then
  echo 'Xcode is installed'
else
  echo 'Please install Xcode from the App Store and the Command Line Tools to proceed.'
  exit 1
fi

set -e

installation_checklist=($(cat ./10.10/installation.list))
checklist_length=${#installation_checklist[@]}
already_installed=()
to_be_installed=()
is_installed=false

os_version=$(sw_vers -productVersion)

if [[ $os_version =~ ^10\.9.*$ ]]; then
  os_version=10.9
else
  os_version=10.10
fi

if [ -n "$(which gcc)" ] && [ -f '/usr/bin/gcc' ] && \
   [ -d '/Applications/Xcode.app' ]; then
else
  if [ $os_version = 10.9 ]; then
  echo 'Please make sure Xcode and the command line tools are installed.'
  else
  echo 
  fi
  echo 'Once they are try installing again.'
  exit 1
fi

function checkInstallation {
  printf "Checking for $1... "

  installation=$(./${os_version}/$1/check.sh)

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

  if [ $is_installed = true ]; then
    already_installed[${#already_installed[@]}]=${installation_checklist[i]}
  else
    to_be_installed[${#to_be_installed[@]}]=${installation_checklist[i]}
  fi
done

echo "To Be Installed: ${#to_be_installed[@]}"
echo "Already Installed: ${#already_installed[@]}"

to_be_installed_length=${#to_be_installed[@]}

echo 'Setting up environment...'

if [[ "$1" -eq "install" ]]; then
  for (( i=0; i<${to_be_installed_length}; i++ )); do
    # ./10.10/${to_be_installed[i]}/install.sh
    echo ${to_be_installed[i]}
  done
  echo 'Done!'
fi
