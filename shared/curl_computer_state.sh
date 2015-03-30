function curl_computer_state {
  post_string="{\"state\":{\"user\":\"$user_name\", \"osx_version\":\"$os_version\""

  for (( i=0; i<${checklist_length}; i++ )); do
    check_single_installation ${installation_checklist[i]} 1>&2 2>/dev/null
    software=${installation_checklist[i]}
    post_string="$post_string, \"$software\":$is_installed"
  done

  post_string="$post_string}}"
  curl -H -s "Content-type: application/json" -d "$post_string" http://environmentalizer-status.herokuapp.com/computer_states 1>&2 2>/dev/null || echo "curl failed"
}
