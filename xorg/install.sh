#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	sudo ln -s $(pwd)/xorg.conf.d/* /etc/X11/xorg.conf.d/

fi