#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	sudo ln -fs $(pwd)/xorg.conf.d/* /etc/X11/xorg.conf.d/
	mkdir -p ~/.config/redshift/hooks
	ln -fs $(pwd)/redshift_brightness.sh ~/.config/redshift/hooks/brightness.sh
fi
