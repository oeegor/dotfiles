#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	rm -fr $HOME/.config/xfce4
	ln -fs $(pwd)/xfce4/config $HOME/.config/xfce4
fi
