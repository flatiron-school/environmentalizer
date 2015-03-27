# Environmentalizer

A bash script to quickly and easily bootstrap a well-setup programming
environment. It assumes a fresh install of OS X 10.9 (Mavericks) or OS X 10.10 (Yosemite).

## What It Sets Up

- Flatiron School's standard `.bash_profile`, which includes case-insensitive auto completion, a nice prompt with git branch awareness, and many useful shortcuts.
- Homebrew
- Git
- SQlite3
- RVM, Ruby 2.2.* and their dependencies
- The Learn gem and its dependencies
- Sublime Text 3 with Package Control, Solarized Theme, and proper tab defaults
- Sensible `.gitconfig`, `.gitignore`, `.gemrc`, and `.irbrc` files
- SSH Key for GitHub
- A simple directory structure for well-organized code
- Google Chrome

## What You Need Before You Begin

1. Know your admin password (you'll need to enter it once when the script first runs)
2. Know your GitHub username
3. Know the email address associated with your GitHub account
4. A personal access api token for GitHub. You can create one here: [https://github.com/settings/tokens/new](https://github.com/settings/tokens/new). The name doesn't matter. You *MUST* select the `write:public_key` scope.

## Notes

1. You'll need to run this script from an account with admin status. (___DO NOT___ prepend `sudo` to the command below.)
2. When the script first runs, you'll need to enter your admin password once for Homebrew to install and again for Sublime's symlink.
3. During installation, Sublime Text will open for a few seconds and then close automatically. Do not close it yourself. This step is required for some important directories to be created.

## Usage

```shell
curl -L "https://raw.githubusercontent.com/flatiron-labs/environmentalizer/master/runner.sh" | bash
```

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

## TODO

1. Extract 'check if file exists and if it has this content' logic into
   reusable function
2. Write tests
