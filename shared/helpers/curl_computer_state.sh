function curl_computer_state {
  . "./${os_version}/homebrew/check.sh" 1>&2 2> /dev/null
  post_string="{\"state\":{\"user\":\"$(id -un)\", \"osx_version\":\"$(sw_vers -productVersion)\""

  for (( i=0; i<${checklist_length}; i++ )); do
    software=${installation_checklist[i]}
    check_single_installation ${installation_checklist[i]} # sets is_installed variable to boolean

    . "./${os_version}/${installation_checklist[i]}/version.sh" # sources a function to call on the next line
    version_message=$(${software}_version)

    if [[ $version_message = true ]] || [[ $version_message = false ]]; then
      post_string="$post_string,\"$software\":$version_message" # makes sure booleans are sent as booleans
    else
      post_string="$post_string,\"$software\":\"$version_message\"" # all other types of versions are sent as strings
    fi
  done

  post_string="$post_string}}"
  curl -H -s "Content-type: application/json" -d "$post_string" http://environmentalizer-status.herokuapp.com/computer_states 1>&2 2>/dev/null || echo "curl failed"
}
