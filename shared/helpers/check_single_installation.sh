function check_single_installation {
  installation=$(./${os_version}/$1/check.sh)

  if [[ ${installation} =~ ^.*installed$ ]]; then
    is_installed=true
  else
    is_installed=false
  fi
}
