#!/bin/bash
function ruby_version {
  source_rvm
  echo $(ruby --version | perl -lne 'print $& if /(\d.*?)\s/')
}
