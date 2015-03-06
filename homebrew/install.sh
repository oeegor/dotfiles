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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
apps=(
  caskroom/cask/brew-cask
  coreutils
  grc
  htop
  openssl
  postgresql
  python
  redis
  spark
)
brew install ${apps[@]}

# upgrade cask
brew upgrade caskroom/cask/brew-cask

# update cask versions
brew tap caskroom/versions

# Install Casks
casks=(
  adobe-creative-cloud
  atom
  audacity
  dropbox
  flux
  google-chrome
  iterm2
  monotype-skyfonts
  node
  nvalt
  picasa
  rdio
  sdspeed
  skype
  spectacle
  sublime-text3
  utorrent
  virtualbox
  vlc
)

# Install apps to ~/Applications
# Default is: /Users/$user/Applications
# to overwrite, add:  --appdir="/Applications"
echo "installing cask apps..."
brew cask install ${casks[@]}

exit 0
