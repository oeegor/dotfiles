#!/bin/bash

set -ex

if [ "$(uname -s)" == "Linux" ]
then
    sudo pacman -Sy --noconfirm \
        --needed base-devel \
                bind-tools \  # for host, nslookup
        chromium \
        firefox \
        git \
        gnome-keyring \  # for mailspring to work
        gvfs \  # to support trash and others. https://wiki.gnome.org/Projects/gvfs
        htop \
        iotop \   # like top for io
        libinput \
        maim xclip \
        netcat \
        openvpn \
        pavucontrol \  # gui for pulseaudio
        pulseaudio \  # for sound system
        pulseaudio-alsa \  # pulseaudio alsa support
        python-pip \
        sudo \
        unzip \
        tilix \
        ttf-bitstream-vera \
        ttf-dejavu \
        xbindkeys \
        xnviewmp \
        xorg-server \
        xorg-xinit \
        xorg-xinput \
        xorg-xrandr \
        vim \
        vlc \  # media player
        zsh
fi
