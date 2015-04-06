#!/bin/bash
function ruby_version {
  echo $(ruby --version | perl -lne 'print $& if /(\d.*?)\s/')
}
