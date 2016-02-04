#!/bin/bash

set e

USER_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages/User/"
INSTALLED_PKGS_DIR="$HOME/Library/Application Support/Sublime Text 3/Installed Packages/"
PACKAGE_MANAGER_APP_PATH="$INSTALLED_PKGS_DIRPackage Control.sublime-package"

for file in \
    "Anaconda.sublime-settings" \
    "Default (OSX).sublime-keymap" \
    "GoSublime.sublime-settings" \
    "Preferences.sublime-settings"
do
    TARGET_PATH="$USER_DIR$file"
    echo "removing $file"
    rm "$TARGET_PATH"
    echo "installing $file"
    cp "sublime3/$file" "$TARGET_PATH"
done


echo "installing package manager"
if [ -f "$INSTALLED_PKGS_DIR/Package Control.sublime-package" ]
then
  echo "package manager is already installed"
else
  curl -o $PACKAGE_MANAGER_APP_PATH \
  https://packagecontrol.io/Package%20Control.sublime-package
fi
