#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	ln -s $(pwd)/xmonad.hs $HOME/.xmonad/
fi