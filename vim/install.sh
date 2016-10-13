#!/bin/bash

set e

brew install vim

brew install ctags
brew install gotags

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim