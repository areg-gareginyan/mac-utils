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
# JSON & YAML
brew install jq
brew install yq

### Office
# Browsers
brew install --cask google-chrome
# Libre Office
brew install --cask libreoffice
# Messengers
brew install --cask thunderbird
brew install --cask telegram
brew install --cask whatsapp
brew install --cask microsoft-teams
# Skype & Slack sometimes come preinstalled
# brew install --cask skype
# brew install --cask slack
# Security
brew install --cask macpass
# Network
brew install --cask nordlayer
brew install --cask openvpn-connect
# Miscellaneous
brew install --cask fbreader

### Development
# Git hooks
brew install lefthook
# Doc generators
brew install pandoc
brew install plantuml
# Docker
brew install --cask docker
brew install docker-compose
# VS code
brew install --cask visual-studio-code
code --install-extension eamodio.gitlens
code --install-extension yzhang.markdown-all-in-one
code --install-extension jebbs.plantuml
code --install-extension github.vscode-github-actions
code --install-extension randomfractalsinc.geo-data-viewer
code --install-extension github.copilot
code --install-extension ms-azuretools.vscode-docker

### Node.js
# Package manager
brew install yarn
# Version management
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
code --install-extension dbaeumer.vscode-eslint

### Go
# Version management
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
# Workaround to get some MacOS prebuilt Go for compliing gvm Go from source
# https://github.com/moovweb/gvm/issues/287
brew install go
gvm install go1.20
gvm use go1.20 --default
brew uninstall go
# VS Code
code --install-extension golang.go
go install -v golang.org/x/tools/gopls@latest
go install -v github.com/ramya-rao-a/go-outline@latest
go install -v golang.org/x/tools/cmd/goimports@latest
go install -v github.com/stamblerre/gocode@latest
#go install -v github.com/rogpeppe/godef@v1.1.2

### Kotlin
brew install micronaut

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

### Python
# Version managmenet & virtual environments
brew install pyenv
brew install pyenv-virtualenv
echo "if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi" >> ~/.zshrc

### AWS
brew install awscli
brew install eksctl

### Azure
brew install azure-cli

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

### Mobile
brew install --cask android-studio
brew install --cask flutter

### Database
brew install --cask mongodb-compass
brew install --cask nosqlbooster-for-mongodb
brew install --cask pgadmin4

### Entertainment
brew install --cask steam
