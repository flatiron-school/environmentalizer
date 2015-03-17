os_version=$(sw_vers -productVersion)

if [[ $os_version =~ ^10\.9.*$ ]]; then
  os_version=10.9
else
  os_version=10.10
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
