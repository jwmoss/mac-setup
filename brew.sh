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
  packer
  pandoc
  rclone
  speedtest-cli
  ssh-copy-id
  terraform
  youtube-dl
)

brew install ${PACKAGES[@]}

# Install PowerShell
brew cask install powershell

# Remove outdated versions from the cellar.
brew cleanup
