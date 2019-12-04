#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	CONF_PATH="$HOME/.config/polybar"
	mkdir -p $CONF_PATH
	for d in $(pwd)/polybar/*
	do
		FILE_NAME=$(basename "$d")
		[ "$FILE_NAME" != "install.sh" ] && ln -fs $d "$CONF_PATH/$FILE_NAME"
	done
fi
