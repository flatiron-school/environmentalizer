#!/bin/bash
function sqlite3_version {
  echo $(sqlite3 --version | perl -lne 'print $& if /(\d.*?)\s/')
}
