#!/bin/bash

function copyBashProfile {
  echo 'Getting Flatiron School .bash_profile...'
  cd ~
  
  if [ -f .bash_profile ]; then
    mv .bash_profile .bash_profile.old
  fi

  curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/bash_profile" -o ".bash_profile"
}

function getCommandLineTools {
  echo 'Downloading command line tools...'
  cd ~

  if [ -f cli_tools.dmg ]; then
    rm cli_tools.dmg
  fi

  curl "http://flatiron-school.s3.amazonaws.com/software/command_line_tools_os_x_mavericks_for_xcode__late_october_2013.dmg" -o "cli_tools.dmg"
}

function installCommandLineTools {
  echo 'Installing command line tools...'
  cd ~

  hdiutil attach cli_tools.dmg
  sudo installer -pkg "/Volumes/Command Line Developer Tools/Command Line Tools (OS X 10.9).pkg" -target "/Volumes/Macintosh HD"
  hdiutil detach "/Volumes/Command Line Developer Tools"
  rm cli_tools.dmg
}

function installHomebrew {
  echo 'Installing Homebrew...'
  cd ~

  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
}

function installGit {
  echo 'Installing Git...'
  cd ~
  source $HOME/.bash_profile

  brew install git
}

function installSqlite {
  echo 'Installing SQlite3...'
  cd ~

  brew install sqlite3
}

function installRVM {
  echo 'Installing RVM and Ruby 2.1.2...'
  cd ~

  \curl -L https://get.rvm.io | bash -s stable --ruby=2.1.2
  source $HOME/.bash_profile

  rvm use 2.1.2 --default
}

function getSublime {
  echo 'Downloading SublimeText 2.0...'
  cd ~
  
  if [ -f sublime.dmg ]; then
    rm sublime.dmg
  fi

  curl "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg" -o "sublime.dmg"
}

function installSublime {
  echo 'Installing SublimeText 2.0...'
  cd ~

  hdiutil attach sublime.dmg
  cp -r "/Volumes/Sublime Text 2/Sublime Text 2.app" "/Applications/Sublime Text 2.app"
  hdiutil detach "/Volumes/Sublime Text 2"

  rm sublime.dmg
  
  sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin
  subl
  killall "Sublime Text 2"
  
  cd "$HOME/Library/Application Support/Sublime Text 2/Installed Packages"
  curl "https://sublime.wbond.net/Package%20Control.sublime-package" -o "Package Control.sublime-package"

  cd "$HOME/Library/Application Support/Sublime Text 2/Packages/Color Scheme - Default"
  curl "http://flatironschool.s3.amazonaws.com/curriculum/resources/environment/themes/Solarized%20Flatiron.zip" -o "Solarized Flatiron.zip"
  tar -zxvf "Solarized Flatiron.zip"
  rm "Solarized Flatiron.zip"
  
  cd "$HOME/Library/Application Support/Sublime Text 2/Packages/Default"
  sed -i '' "s/\"tab_size\": 4,/\"tab_size\": 2,/g" Preferences.sublime-settings
  sed -i '' "s/\"translate_tabs_to_spaces\": false,/\"translate_tabs_to_spaces\": true,/g" Preferences.sublime-settings
}

function getGitconfig {
  echo "Setting up .gitconfig..."
  cd ~
  
  if [ -f .gitconfig ]; then
    mv .gitconfig .gitconfig.old
  fi

  curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/gitconfig" -o ".gitconfig"
  sed -i '' "s/<YOUR HOME DIRECTORY>/$USER/g" .gitconfig

  printf 'Enter your GitHub username: '
  read username < /dev/tty

  printf 'Enter your GitHub email address: '
  read email < /dev/tty

  printf 'Enter your GitHub API key (set one up at https://github.com/settings/applications): '
  read apikey < /dev/tty

  sed -i '' "s/<github username>/$username/g" .gitconfig
  sed -i '' "s/<API token>/$apikey/g" .gitconfig
  sed -i '' "s/<github email address>/$email/g" .gitconfig
}

function getGitignore {
  echo 'Setting up .gitignore...'
  cd ~

  if [ -f .gitignore ]; then
    mv .gitignore .gitignore.old
  fi

  curl "http://bit.ly/flatiron-gitignore" -o ".gitignore"
}

function setupGemrc {
  echo 'Setting up .gemrc...'
  cd ~

  if [ -f .gemrc ]; then
    mv .gemrc .gemrc.old
  fi

  touch .gemrc
  echo "gem: --no-ri --no-rdoc" > .gemrc
}

function getIrbrc {
  echo 'Setting up .irbrc...'
  cd ~

  if [ -f .irbrc ]; then
    mv .irbrc .irbrc.old
  fi

  curl "http://bit.ly/flatiron-irbrc" -o ".irbrc"
}

function setupDirStructure {
  echo 'Setting up basic development directory structure...'
  cd ~

  mkdir -p Development/code
}

function completeSetup {
  echo "Done!"
}

#copyBashProfile
#getCommandLineTools
#installCommandLineTools
#installHomebrew
#installGit
#installSqlite
#installRVM
#getSublime
#installSublime
getGitconfig
setupGemrc
getIrbrc
setupDirStructure
completeSetup
