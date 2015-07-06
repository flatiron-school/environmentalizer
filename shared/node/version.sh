#!/bin/bash
function node_version {
  echo $(node -v | perl -lne 'print $& if /\d.*/')
}
