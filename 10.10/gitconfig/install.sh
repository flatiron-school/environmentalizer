#!/bin/bash

if [ -f "$HOME/.gitconfig" ]; then
  echo 'Backing up existing .gemrc...'
  mv $HOME/.gitconfig{,.bak}
fi

echo 'Installing Flatiron School .gitconfig...'

curl "https://raw.githubusercontent.com/flatiron-school/dotfiles/master/gitconfig" -o "$HOME/.gitconfig" >/dev/null 2>&1
sed -i '' "s/<YOUR HOME DIRECTORY>/$USER/g" $HOME/.gitconfig

printf 'Enter your GitHub username: '
read username < /dev/tty

printf 'Enter your GitHub email address: '
read email < /dev/tty

printf 'Enter your GitHub API key (set one up at https://github.com/settings/applications): '
read apikey < /dev/tty

sed -i '' "s/<github username>/$username/g" $HOME/.gitconfig
sed -i '' "s/<API token>/$apikey/g" $HOME/.gitconfig
sed -i '' "s/<github email address>/$email/g" $HOME/.gitconfig

if [ ! -f .ssh/id_rsa.pub ]; then
  ssh-keygen -t rsa -N '' -C "$username@github" -f "$HOME/.ssh/id_rsa"
fi

sshkey=$(cat $HOME/.ssh/id_rsa.pub)

curl -s -u "$username:$apikey" https://api.github.com/user/keys -d "{\"title\":\"$username@github\",\"key\":\"$sshkey\"}" >/dev/null 2>&1

echo -e "\033[34;32mDone.\033[0m"
