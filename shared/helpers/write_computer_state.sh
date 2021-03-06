function write_computer_state {
  . "./${os_version}/homebrew/check.sh" 1>&2 2> /dev/null
  post_string="{\"state\":{\"user\":\"$(id -un)\", \"osx_version\":\"$(sw_vers -productVersion)\""

  for (( i=0; i<${checklist_length}; i++ )); do
    software=${installation_checklist[i]}
    check_single_installation ${installation_checklist[i]} # sets is_installed variable to boolean

    . "./${os_version}/${installation_checklist[i]}/version.sh" # sources a function to call on the next line
    version_message=$(${software}_version) # calls said function and stores return value in version_message

    if [[ $version_message = true ]] || [[ $version_message = false ]]; then
      post_string="$post_string,\"$software\":$version_message" # makes sure booleans are sent as booleans
    else
      post_string="$post_string,\"$software\":\"$version_message\"" # all other types of versions are sent as strings
    fi
  done

  post_string="$post_string}}"

  echo $post_string > "/tmp/${run_state}.json"
}
