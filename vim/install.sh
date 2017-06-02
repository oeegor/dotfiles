#!/bin/bash

set e

if [ "$(uname -s)" == "Darwin" ]
then
	brew install vim
	brew install ctags
	brew install gotags
fi



# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim