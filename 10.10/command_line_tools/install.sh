#!/bin/bash

echo -n 'Installing Command Line Tools...'

curl -o fis_install.zip 'http://fis-downloads.s3.amazonaws.com/fis_install.zip' >/dev/null 2>&1
unzip fis_install.zip >/dev/null 2>&1
rm fis_install.zip

sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "INSERT or REPLACE INTO access VALUES('kTCCServiceAccessibility','com.apple.Automator',0,1,1,NULL)"
sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "INSERT or REPLACE INTO access VALUES('kTCCServiceAccessibility','com.apple.automator.fis_install',0,1,1,NULL)"

xcode-select --install
sleep 2
open fis_install.app

rm -rf fis_install.app
rm -rf __MACOSX
sudo sqlite3 /Library/Application\ Support/com.apple.TCC/TCC.db "DELETE FROM access WHERE client='com.apple.automator.fis_install'"

echo -e "\033[34;32mDone.\033[0m"
