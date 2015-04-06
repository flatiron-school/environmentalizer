#!/bin/bash
function git_version {
  git --version | perl -lne 'print $& if /\d.*/'
}
