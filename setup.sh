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

### Office

# Libre Office
brew install --cask libreoffice

# Messengers
brew install --cask thunderbird
brew install --cask telegram
brew install --cask whatsapp
# Skype & Slack sometimes come preinstalled
# brew install --cask skype
# brew install --cask slack

# Security
brew install --cask macpass
brew install --cask nordlayer

# Miscellaneous
brew install --cask fbreader

### Development

# Git hooks
brew install lefthook

# Doc generators
brew install pandoc
brew install plantuml

# Docker
brew install docker
brew install docker-compose

# VS code
brew install --cask visual-studio-code
code --install-extension eamodio.gitlens
code --install-extension yzhang.markdown-all-in-one
code --install-extension jebbs.plantuml

### Node.js

# Version management
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

### Go

# Version management
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
# Workaround to get some MacOS prebuilt Go for compliing gvm Go from source
# https://github.com/moovweb/gvm/issues/287
brew install go
gvm install go1.20
gvm use go1.20 --default
brew uninstall go

### Terraform

# Version management
brew install tfenv

# Helper tools
brew install tfsec
brew install tflint
brew install terraform-docs

# VSCode plugins
code --install-extension hashicorp.terraform
code --install-extension tfsec.tfsec

### AWS

brew install awscli
brew install eksctl

### K8

brew install kubectl
brew install helm
brew install istioctl

### QA

# API testing
brew install --cask postman
brew install newman

# Performance testing
brew install k6
