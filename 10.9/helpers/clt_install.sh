#!/bin/bash
cd ~
FILE_SIZE=$(curl -sI "http://flatiron-school.s3.amazonaws.com/software/command_line_tools_os_x_mavericks_for_xcode__late_october_2013.dmg" | grep Content-Length | awk '{print $2}')
echo $FILE_SIZE > $HOME/clt_install_size_log;

if [ -f "$HOME/cli_tools.dmg" ]; then
    rm $HOME/cli_tools.dmg
fi

curl --silent "http://flatiron-school.s3.amazonaws.com/software/command_line_tools_os_x_mavericks_for_xcode__late_october_2013.dmg" -o "$HOME/cli_tools.dmg"

hdiutil attach -nobrowse $HOME/cli_tools.dmg

installer -pkg "/Volumes/Command Line Developer Tools/Command Line Tools (OS X 10.9).pkg" -target "/Volumes/Macintosh HD"
hdiutil detach "/Volumes/Command Line Developer Tools"
rm $HOME/cli_tools.dmg

if [ -f "$HOME/clt_install_size_log" ]; then
    rm $HOME/clt_install_size_log
fi

echo "DONE"
