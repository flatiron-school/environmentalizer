xcode-select -p; are_cli_installed=$?
xcode_path=$(mdfind "kind:app xcode")
xcode_license=$(xcodebuild 2>&1)
error_messages=()

function check_for_clt_and_xcode {
  if [[ -n $xcode_path ]]; then
    if [[ $xcode_license =~ "license" ]]; then
      error_messages+=("Please accept the Xcode License.")
    fi
  else
    error_messages+=("Please install Xcode.")
  fi

  if [[ $are_cli_installed -gt 0 ]]; then
    error_messages+=("Please install Command Line Tools.")
  fi
}
