#!/bin/bash
function git_version {
  echo $(git --version | perl -lne 'print $& if /\d.*/')
}
