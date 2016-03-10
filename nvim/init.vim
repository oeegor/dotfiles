
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
nmap <Leader>t :TagbarToggle<CR>
" Jump to the last known position in a file just after opening it, if the '" mark is set
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
" Remove trailing whitespaces before save
autocmd BufWritePre * :%s/\s\+$//e

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


call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

Plug 'junegunn/vim-easy-align'

Plug 'junegunn/vim-github-dashboard'

Plug 'kien/ctrlp.vim', { 'tag': '1.79' }
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](env|node_modules|bower_components)$',
    \ }
" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

Plug 'scrooloose/nerdtree', { 'tag': '4.2.0' }
let NERDTreeIgnore=[]
nmap <silent> <Leader>n :NERDTreeToggle<CR>
" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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
let g:deoplete#sources#go#align_class = 1
" set completeopt+=noinsert
set completeopt+=preview

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
