#!/bin/bash
source shared/check_for_clt_and_xcode.sh
# source shared/post_state.sh

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
    echo "${error_messages[i]}"
  done
  exit 1
fi

set -e

installation_checklist=($(cat ./10.10/installation.list))
checklist_length=${#installation_checklist[@]}
already_installed=()
to_be_installed=()
is_installed=false

function check_installation {
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

user_name=$(id -F)
post_string="{\"state\":{\"user\":\"$user_name\""

for (( i=0; i<${checklist_length}; i++ )); do
  check_installation ${installation_checklist[i]}
  software=${installation_checklist[i]}

  # if [[ $i -gt 0 ]]; then
    post_string="$post_string, \"$software\":$is_installed"
  # else
  #   post_string="$post_string \"$software\":$is_installed"
  # fi

  if [ $is_installed = true ]; then
    already_installed[${#already_installed[@]}]=${installation_checklist[i]}
  else
    to_be_installed[${#to_be_installed[@]}]=${installation_checklist[i]}
  fi
done

post_string="$post_string}}"
curl -H -s "Content-type: application/json" -d "$post_string" http://3d2ea0c6.ngrok.com/computer_states 1>&2 2>/dev/null

echo "To Be Installed: ${#to_be_installed[@]}"
echo "Already Installed: ${#already_installed[@]}"

to_be_installed_length=${#to_be_installed[@]}

echo 'Setting up environment...'

if [[ "$1" -eq "install" ]]; then
  for (( i=0; i<${to_be_installed_length}; i++ )); do
    # comment below in to actual run the install portions
    # "./${os_version}/${to_be_installed[i]}/install.sh"
    echo ${to_be_installed[i]}
  done
fi
