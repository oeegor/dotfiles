#!/bin/bash

set e

brew install neovim/neovim/neovim

brew install ctags
brew install gotags
pip3 install neovim

NVIM_FOLDER="$HOME/.config/nvim/"
mkdir -p NVIM_FOLDER
# vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $(pwd)/nvim/init.vim $NVIM_FOLDER/init.vim