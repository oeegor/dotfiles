#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	OPENBOX_CONF_PATH="$HOME/.config/openbox/"
	mkdir -p $HOME/.config/openbox
	ln -fs $(pwd)/openbox/* OPENBOX_CONF_PATH
fi
