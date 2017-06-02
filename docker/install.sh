#!/bin/sh

if [ "$(uname -s)" == "Darwin" ]
then
	# sadly, doesn't work without sudo yet
	sudo chown root:wheel /usr/local/bin/docker-machine-driver-xhyve
	sudo chmod u+s /usr/local/bin/docker-machine-driver-xhyve
	sudo chown -R $USER ~/.docker/machine
fi
