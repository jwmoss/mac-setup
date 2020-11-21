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

PACKAGES=(
  ansible
  conftest
  ffmpeg
  gh
  go
  git
  imagemagick
  mas
  openssl
  openssl@1.1
  packer
  pandoc
  rclone
  speedtest-cli
  ssh-copy-id
  terraform
  youtube-dl
)

## Install all the things
brew install ${PACKAGES[@]}

CASKAPPS=(
    firefox
    powershell
    dropbox
    visual-studio-code
    discord
)

# Install Apps from App Store
mas install 808809998 ## Reeder 3
mas install 1384080005 ## Tweetbot 3
mas install 409203825 ## Numbers
mas install 409201541 ## Pages
mas install 409183694 ## Keynote
mas install 803453959 ## Slack
mas install 525912054 ## Wifi Signal
mas install 784801555 ## OneNote


# Install all the cask apps
brew cask install ${CASKAPPS[@]}

# Remove outdated versions from the cellar.
brew cleanup

## Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


