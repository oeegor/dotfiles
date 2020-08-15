#!/bin/bash

set -ex

VSCODE_SETTINGS_DIR="$HOME/.config/Code - OSS/User"
sudo ln -fs $(pwd)/settings.json "$VSCODE_SETTINGS_DIR/settings.json"
