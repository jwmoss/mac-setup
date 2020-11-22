#!/usr/bin/env bash

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade packages
brew upgrade

brew install ansible
brew install gh
brew install go
brew install git
brew install imagemagick
brew install mas
brew install openssl
brew install openssl@1.1
brew install packer
brew install pandoc
brew install rclone
brew install speedtest-cli
brew install ssh-copy-id
brew install terraform
brew install youtube-dl

## Brew Cask installs
brew cask install firefox
brew cask install powershell
brew cask install dropbox
brew cask install discord
brew cask install visual-studio-code-insiders

# Install Apps from App Store
mas install 1384080005 ## Tweetbot 3
mas install 409203825 ## Numbers
mas install 409201541 ## Pages
mas install 409183694 ## Keynote
mas install 803453959 ## Slack
mas install 525912054 ## Wifi Signal
mas install 784801555 ## OneNote
mas install 1333542190 ## 1Password 7

# Remove outdated versions from the cellar.
brew cleanup

## Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

## Install PowerLevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

## Install PowerLevel Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
chmod +x install.sh
./install.sh
cd ..
rm -rf fonts
