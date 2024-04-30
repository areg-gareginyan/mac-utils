# # #!/bin/sh

### Helper methods
function brew_setup {
    if brew ls --versions "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade "$1"
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew install "$1"
    fi
}

function brew_setup_cask {
    if brew ls --cask --versions "$1" >/dev/null; then
        HOMEBREW_NO_AUTO_UPDATE=1 brew upgrade --cask "$1"
    else
        HOMEBREW_NO_AUTO_UPDATE=1 brew install --cask "$1"
    fi
}

function vscode_setup_extension {
    code --install-extension "$1" --force
}

### Shell
# Oh My Zsh
if which omz >/dev/null; then
    omz update
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
# Brew
if which brew >/dev/null; then
    brew update
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$USER/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
# Vim
mkdir -p ~/.vim ~/.vim/autoload ~/.vim/backup ~/.vim/colors ~/.vim/plugged
cp vimrc ~/.vimrc
# JSON & YAML
brew_setup jq
brew_setup yq

### Office
# Browsers
brew_setup_cask google-chrome
# Libre Office
brew_setup_cask libreoffice
# Messengers
brew_setup_cask thunderbird
brew_setup_cask telegram
brew_setup_cask whatsapp
brew_setup_cask microsoft-teams
## NOTE: Skype & Slack sometimes come preinstalled
# brew_setup_cask skype
# brew_setup_cask slack
# Security
brew_setup_cask macpass
# Network
brew_setup_cask nordlayer
brew_setup_cask openvpn-connect
# Miscellaneous
brew_setup_cask fbreader

### Development
# Git hooks
brew_setup lefthook
# Doc generators
brew_setup pandoc
brew_setup plantuml
# Docker
brew_setup_cask docker
brew_setup docker-compose
# VS code
brew_setup_cask visual-studio-code
vscode_setup_extension eamodio.gitlens
vscode_setup_extension yzhang.markdown-all-in-one
vscode_setup_extension jebbs.plantuml
vscode_setup_extension github.vscode-github-actions
vscode_setup_extension randomfractalsinc.geo-data-viewer
vscode_setup_extension github.copilot
vscode_setup_extension github.copilot-chat
vscode_setup_extension ms-azuretools.vscode-docker

### Node.js
# Package manager
brew_setup yarn
# Version management
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
vscode_setup_extension dbaeumer.vscode-eslint

### Go
# Version management
if which brew >/dev/null; then
    echo "GVM already installed"
else
    zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
    # Workaround to get some MacOS prebuilt Go for compliing gvm Go from source
    # https://github.com/moovweb/gvm/issues/287
    brew install go
    gvm install go1.20
    gvm use go1.20 --default
    brew uninstall go
fi
# # VS Code
vscode_setup_extension golang.go
# go install -v golang.org/x/tools/gopls@latest
# go install -v github.com/ramya-rao-a/go-outline@latest
# go install -v golang.org/x/tools/cmd/goimports@latest
# go install -v github.com/stamblerre/gocode@latest
# #go install -v github.com/rogpeppe/godef@v1.1.2

# ### Kotlin
brew_setup micronaut

### Terraform
# Version management
brew_setup tfenv
# Helper tools
brew_setup tfsec
brew_setup tflint
brew_setup terraform-docs
# VSCode plugins
vscode_setup_extension hashicorp.terraform
vscode_setup_extension tfsec.tfsec

### Python
# Version managmenet & virtual environments
brew_setup pyenv
brew_setup pyenv-virtualenv
# echo "if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi" >> ~/.zshrc

### AWS
brew_setup awscli
brew_setup eksctl

### Azure
brew_setup azure-cli

### K8
brew_setup kubectl
brew_setup helm
brew_setup istioctl

### QA
# API testing
brew_setup_cask postman
brew_setup newman
# Performance testing
brew_setup k6

### Mobile
brew_setup_cask android-studio
brew_setup_cask flutter

### Database
brew_setup_cask mongodb-compass
brew_setup_cask nosqlbooster-for-mongodb
brew_setup_cask pgadmin4

### Entertainment
brew_setup_cask steam
