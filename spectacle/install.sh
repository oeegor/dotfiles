#!/bin/bash


if [ "$(uname -s)" == "Darwin" ]
then
	./export-shortcuts.sh | sh
fi
