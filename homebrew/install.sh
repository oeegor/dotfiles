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
brew install grc coreutils spark
brew install openssl
brew install redis
brew install postgresql
brew install htop

# Install Cask
brew install caskroom/cask/brew-cask

# Install Casks
brew cask install alfred
brew cask install flux

brew cask install virtualbox
brew cask install node

brew cask install google-chrome
brew cask install iterm2
brew cask install atom

brew cask install nvalt
brew cask install rdio
brew cask install audacity

exit 0
