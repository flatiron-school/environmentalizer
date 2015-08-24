#!/bin/bash

echo 'Installing Postgres...'

if [ -f "$HOME/postgresapp.zip" ]; then
  rm $HOME/postgresapp.zip
fi

echo -n 'Downloading...'
curl -L0ks 'https://github.com/PostgresApp/PostgresApp/releases/download/9.4.4.0/Postgres-9.4.4.0.zip' -o "$HOME/postgresapp.zip"
echo -e "\033[34;32mDone.\033[0m"

echo -n 'Installing...'
unzip -q $HOME/postgresapp.zip -d $HOME/

if [ -d /Applications/Postgres.app ]; then
  kill -9 $(ps aux | grep Postgres.app | awk '{print $2}')

  if [[ ! -e /Applications/Postgres.app.old ]]; then
    mv /Applications/Postgres.app{,.old}
  else
    num=2
    while [[ -e "/Applications/Postgres.app.old.$num" ]]; do
      (( num++ ))
    done

    mv /Applications/Postgres.app "/Applications/Postgres.app.old.$num"
  fi

  if [[ ! -e "$HOME/Postgres.app" ]]; then
    mv "$HOME/Postgres.app" "$HOME/Postgres.app.old"
  else
    num=2
    while [[ -e "$HOME/Postgres.app.old.$num" ]]; do
      (( num++ ))
    done

    mv "$HOME/Postgres.app" "$HOME/Postgres.app.old.$num"
  fi
fi

mv $HOME/Postgres.app /Applications/

defaults write $HOME/Library/Preferences/com.postgresapp.Postgres.plist ShowWelcomeWindow -bool FALSE && killall -u $USER cfprefsd && open /Applications/Postgres.app && open $(mdfind kind:application Learn)

rm $HOME/postgresapp.zip
echo -e "\033[34;32mDone.\033[0m"
