# Environmentalizer

A bash script to quickly and easily bootstrap a well-setup programming
environment. It assumes a fresh install of OS X 10.9 (Mavericks).

## What It Sets Up

1. Flatiron School's standard `.bash_profile`, which includes case-insensitive auto completion, a nice prompt with git branch awareness, and many useful shortcuts.
2. Command Lines Tools
3. Homebrew
4. Git
5. SQlite3
6. RVM and Ruby 2.1.2
7. Sublime Text 2.0 with Package Control, Solarized Theme, and proper tab defaults
8. Sensible `.gitconfig`, `.gitignore`, `.gemrc`, and `.irbrc` files
9. SSH Key for GitHub 
10. A simple directory structure for well-organized code

## What You Need Before You Begin

1. Know your admin password (you'll need to enter it once when the script first runs)
2. Know your GitHub username
3. Know the email address associated with your GitHub account
4. A personal access api token for GitHub. You can create one here: [https://github.com/settings/tokens/new](https://github.com/settings/tokens/new). The name doesn't matter. You *must* select the following scopes (at least):
  * repo
  * public_repo
  * write:public_key
  * user
  * admin:public_key
  * gist

## Usage

`curl -Lo- "https://raw.githubusercontent.com/flatiron-school/environmentalizer/master/bootstrap.sh" | bash`
