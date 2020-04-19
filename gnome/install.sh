#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	sudo ln -fs $(pwd)/run-or-raise.conf $HOME/.config/run-or-raise/shortcuts.conf
fi
