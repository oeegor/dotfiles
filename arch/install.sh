#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
	sudo pacman -Sy --noconfirm \
		--needed base-devel \
		alsa-utils \
		bluez \
		bluez-utils \
		chromium \
		dmenu \
		git \
		htop \
		libinput \
		maim xclip \
		netcat \
		openvpn \
		python-pip \
		sudo \
		termite \
		unzip \
		xmobar \
		xmonad \
		xmonad-contrib \
		xorg-server \
		xorg-xdpyinfo \
		xorg-xinit \
		xorg-xinput \
		xorg-xrandr \
		xterm \
		vim \
		zsh
fi
