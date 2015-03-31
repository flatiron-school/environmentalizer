function check_installation_list {
  for (( i=0; i<${checklist_length}; i++ )); do
    check_single_installation ${installation_checklist[i]}
    software=${installation_checklist[i]}
    printf "Checking for ${installation_checklist[i]}... "

    if [ $is_installed = true ]; then
      echo -e "\033[34;32minstalled\033[0m"
      already_installed[${#already_installed[@]}]=${installation_checklist[i]}
    else
      echo -e "\033[1;31mnot installed\033[0m"
      to_be_installed[${#to_be_installed[@]}]=${installation_checklist[i]}
    fi
  done
}
