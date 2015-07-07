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
mv $HOME/Postgres.app /Applications/

open /Applications/Postgres.app && sleep 3 && killall "Postgres"

rm $HOME/postgresapp.zip
echo -e "\033[34;32mDone.\033[0m"
