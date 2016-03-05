call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'kien/ctrlp.vim', { 'tag': '1.79' }
Plug 'scrooloose/nerdtree', { 'tag': '4.2.0' }
Plug 'jlanzarotta/bufexplorer', { 'tag': 'v7.4.6' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Add plugins to &runtimepath
call plug#end()
