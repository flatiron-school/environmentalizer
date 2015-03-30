#!/bin/bash
source shared/check_for_clt_and_xcode.sh
source shared/check_single_installation.sh
source shared/check_installation_list.sh
source shared/curl_computer_state.sh

os_version=$(sw_vers -productVersion)

if [[ $os_version =~ ^10\.9.*$ ]]; then
  os_version=10.9
else
  os_version=10.10
fi

echo "Running script for ${os_version}.x"
echo "Checking existing environment..."

check_for_clt_and_xcode
errors_length=${#error_messages[@]} # error_messages is defined in shared/check_for_clt_and_xcode.sh

if [[ $errors_length -gt 0 ]]; then
  for (( i=0; i<${errors_length}; i++ )); do
    echo "\033[1;31m${error_messages[i]}\033[0m"
  done
  exit 1
fi

set -e

installation_checklist=($(cat ./10.10/installation.list))
checklist_length=${#installation_checklist[@]}
already_installed=()
to_be_installed=()
is_installed=false
user_name=$(id -un)

check_installation_list
curl_computer_state 1>&2 2>/dev/null

echo "To Be Installed: ${#to_be_installed[@]}"
echo "Already Installed: ${#already_installed[@]}"

to_be_installed_length=${#to_be_installed[@]}

echo 'Setting up environment...'

if [[ ${#to_be_installed[@]} -gt 0 ]]; then
  for (( i=0; i<${to_be_installed_length}; i++ )); do
    "./${os_version}/${to_be_installed[i]}/install.sh"
    # for testing comment out above and comment in below
    # echo ${to_be_installed[i]}
  done
  curl_computer_state 1>&2 2>/dev/null
fi
