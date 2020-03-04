#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
    sudo pacman -Sy --noconfirm \
        --needed base-devel \
        bind-tools \
        chromium \
        firefox \
        git \
        gnome-keyring \
        gvfs \
        htop \
        iotop \
        libinput \
        maim xclip \
        netcat \
        openvpn \
        pavucontrol \
        pulseaudio \
        pulseaudio-alsa \
        python-pip \
        sudo \
        unzip \
        tilix \
        ttf-bitstream-vera \
        ttf-dejavu \
        xbindkeys \
        xorg-server \
        xorg-xinit \
        xorg-xinput \
        xorg-xrandr \
        vim \
        vlc \
        zsh

    which yay || (git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && cd .. && rm -fr yay)
fi
