TARGET_DIR="$HOME/Library/Application Support/Sublime Text 3/Packages/User/"

echo "copying sublime3 config"
cp sublime3/Preferences.sublime-settings "$TARGET_DIR"

echo "copying sublime3 key bindings"
cp "sublime3/Default (OSX).sublime-keymap" "$TARGET_DIR"
