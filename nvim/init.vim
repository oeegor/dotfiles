
let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
nmap <F8> :TagbarToggle<CR>

" interface
set cursorline
set laststatus=2
set nowrap
set number
set scrolloff=3
set showmatch
set title

" Search and replace
set gdefault
set history=100
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
" nmap <Space> :set invhls<cr>:set hls?<cr>


call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'

Plug 'junegunn/vim-github-dashboard'

Plug 'kien/ctrlp.vim', { 'tag': '1.79' }
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](env|node_modules|bower_components)$',
    \ }



Plug 'scrooloose/nerdtree', { 'tag': '4.2.0' }
let NERDTreeIgnore=[]
nmap <silent> <Leader>t :NERDTreeToggle<CR>

Plug 'jlanzarotta/bufexplorer', { 'tag': 'v7.4.6' }

Plug 'flazz/vim-colorschemes'

Plug 'majutsushi/tagbar'

Plug 'fatih/vim-go'
" Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Add plugins to &runtimepath
call plug#end()

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

colorscheme monokai-chris
