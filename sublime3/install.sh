#!/bin/bash

TARGET_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
INSTALLED_PKGS_DIR="$HOME/Library/Application Support/Sublime Text 3/Installed Packages/"
PACKAGE_MANAGER_APP_PATH="$INSTALLED_PKGS_DIRPackage Control.sublime-package"

echo "copying sublime3 config"
cp sublime3/Preferences.sublime-settings $TARGET_DIR

echo "copying sublime3 key bindings"
cp "sublime3/Default (OSX).sublime-keymap" $TARGET_DIR

echo "installing package manager"
if [ -f "$INSTALLED_PKGS_DIR/Package Control.sublime-package" ]
then
  echo "package manager is already installed"
else
  curl -o $PACKAGE_MANAGER_APP_PATH \
  https://packagecontrol.io/Package%20Control.sublime-package
fi
