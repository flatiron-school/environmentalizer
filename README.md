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

## Notes

1. You'll need to run this script from an account with admin status. (DO NOT prepend `sudo` to the command below.)
2. When the script first runs, you'll need to enter your admin password once.
3. During installation, Sublime Text will open for a few seconds and then close automatically. Do not close it yourself. This step is required for some important directories to be created.

## Usage

`curl -Lo- "https://raw.githubusercontent.com/flatiron-school/environmentalizer/master/bootstrap.sh" | bash`

## Testing

Environmentalizer utilizes [Bats (Bash Automated Testing System)](https://github.com/sstephenson/bats) for testing.

### Installation

1. `$ git clone https://github.com/sstephenson/bats`
2. `$ cd bats`
3. `$ ./install.sh /usr/local`

### Use

#### Running Tests

1. Run tests with `$ bats test`
2. Alternatively, run `$ bin/test`

#### Writing Tests

1. Add all test files to the `test` directory
2. Test files should have the `.bats` extension
3. All files need the `#!/usr/bin/env bats` shebang at the top
4. See a sample in `test/sample.bats`
5. For more documentation, visit the (Bats Readme)[https://github.com/sstephenson/bats/blob/master/README.md]
