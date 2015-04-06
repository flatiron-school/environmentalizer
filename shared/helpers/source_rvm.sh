function source_rvm {
  if [[ -f $HOME/.rvm/scripts/rvm ]]; then
    . $HOME/.rvm/scripts/rvm
  fi
}
