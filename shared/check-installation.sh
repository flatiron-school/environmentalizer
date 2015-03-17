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