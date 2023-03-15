#!/bin/sh

### Shell

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Vim
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
cp vimrc ~/.vimrc

### Common

# VS code
brew install --cask visual-studio-code
code --install-extension eamodio.gitlens

# MacPass
brew install --cask macpass

# Lefthook
brew install lefthook

# NordLayer
brew install --cask nordlayer

### Communication

# Thunderbird
brew install --cask thunderbird

# Telegram
brew install --cask telegram

# Whatsapp
brew install --cask whatsapp

# Slack - sometimes comes preinstalled
# brew install --cask slack

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

# terraform-docs
brew install terraform-docs

# VSCode plugins
code --install-extension hashicorp.terraform
code --install-extension tfsec.tfsec

### AWS

# awscli
brew install awscli

### K8

# kubectl
brew install kubectl

### Performance testing

# k6
brew install k6
