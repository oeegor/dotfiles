#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
apps=(
  grc
  caskroom/cask/brew-cask
  coreutils
  spark
  openssl
  redis
  postgresql
  htop
)
brew install ${apps[@]}

# Install Casks
casks=(
  flux
  dropbox
  virtualbox
  node
  google-chrome
  iterm2
  atom
  nvalt
  rdio
  audacity
  skype
  spectacle
  vlc
)

# Install apps to ~/Applications
# Default is: /Users/$user/Applications
# to overwrite, add:  --appdir="/Applications"
echo "installing cask apps..."
brew cask install ${casks[@]}

exit 0
