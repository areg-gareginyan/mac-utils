#!/bin/sh

### Shell

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### Brew

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/areg/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

### VS code

# VS code
brew install --cask visual-studio-code

### Communication

# Thunderbird
brew install --cask thunderbird

# Telegram
brew install --cask telegram

# Slack - comes as standard IM setup
# brew install --cask slack

### Security

# Mac pass
brew install --cask macpass

### Node.js

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

### Go

# gvm
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

### Terraform

# tfenv
brew install tfenv

# tflint
brew install tflint

# tfsec
brew install tfsec

### Git

# lefthook
brew install lefthook