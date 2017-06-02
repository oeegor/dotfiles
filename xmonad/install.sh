#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	mkdir -p $HOME/.xmonad
	ln -fs $(pwd)/xmonad/xmonad.hs $HOME/.xmonad/
fi
