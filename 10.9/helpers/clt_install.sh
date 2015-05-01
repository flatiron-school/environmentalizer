#!/bin/bash
xcode-select -p 1>&2 2> /dev/null; are_cli_installed=$?
if [[ $are_cli_installed -eq 0 ]]; then
    echo "INSTALLED"
else
    cd ~
    FILE_SIZE=$(curl -sI "http://flatiron-school.s3.amazonaws.com/software/command_line_tools_os_x_mavericks_for_xcode__late_october_2013.dmg" | grep Content-Length | awk '{print $2}')
    echo $FILE_SIZE > clt_install_size_log;

    if [ -f cli_tools.dmg ]; then
        rm cli_tools.dmg
    fi

    curl --silent "http://flatiron-school.s3.amazonaws.com/software/command_line_tools_os_x_mavericks_for_xcode__late_october_2013.dmg" -o "cli_tools.dmg"

    hdiutil attach -nobrowse cli_tools.dmg

    installer -pkg "/Volumes/Command Line Developer Tools/Command Line Tools (OS X 10.9).pkg" -target "/Volumes/Macintosh HD"
    hdiutil detach "/Volumes/Command Line Developer Tools"
    rm cli_tools.dmg

    #REMOVING TMP FILES
    if [ -f clt_install_size_log ]; then
        rm clt_install_size_log
    fi

    echo "INSTALLED"

fi
