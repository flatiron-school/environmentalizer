#!/bin/bash
function learn_gem_version {
  if [[ $is_installed -eq true ]]; then
    echo $(cat $HOME/.rvm/gems/ruby-2.2.0/gems/learn-co-1.0.2/lib/learn/version.rb | perl -lne 'print $& if /\d.*[^"]/')
  else
    echo false
  fi
}
