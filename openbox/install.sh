#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	OPENBOX_CONF_PATH="$HOME/.config/openbox"
	mkdir -p $OPENBOX_CONF_PATH
	for d in $(pwd)/openbox/*
	do
		FILE_NAME=$(basename "$d")
		[ "$FILE_NAME" != "install.sh" ] && ln -fs $d "$OPENBOX_CONF_PATH/$FILE_NAME"
	done
fi
