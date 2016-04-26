
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nmap <Leader><Leader> V
nmap <Leader>t :TagbarToggle<CR>
" Jump to the last known position in a file just after opening it, if the '" mark is set
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
" Remove trailing whitespaces before save
autocmd BufWritePre * :%s/\s\+$//e

" rw settings
set autowriteall
set encoding=utf-8
set hidden
set noswapfile
set clipboard+=unnamed  " use the clipboards of vim and win
set paste               " Paste from a windows or from vim
set go+=a               " Visual selection automatically copied to the clipboard

" interface
set nocompatible   " Disable vi-compatibility
set cursorline " show a visual line under the cursor's current line
set laststatus=2
set nowrap
set number
set scrolloff=3
set showmatch " show the matching part of the pair for [] {} and ()
set title

" Search and replace
set gdefault
set history=100
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

" text formatting
set autoindent " indent when moving to the next line while writing code
set backspace=indent,eol,start
set expandtab " expand tabs into spaces
set shiftround
set shiftwidth=4 " when using the >> or << commands, shift lines by 4 spaces
set softtabstop=4
set tabstop=4 " set tabs to have 4 spaces
vnoremap < <gv
vnoremap > >gv

nnoremap <leader>b Oimport ipdb; ipdb.set_trace()<Esc>

call plug#begin('~/.config/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = {
    \ 'dir': '\v[\/](env|node_modules|bower_components)$',
    \ }
" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

Plug 'scrooloose/nerdtree', { 'tag': '4.2.0' }
let NERDTreeIgnore=[]
let g:NERDTreeShowHidden=1
nmap <silent> <Leader>n :NERDTreeToggle<CR>
" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

Plug 'jlanzarotta/bufexplorer', { 'tag': 'v7.4.6' }
let g:bufExplorerShowRelativePath=1
nmap <silent> <Leader>e :BufExplorer<CR>


Plug 'flazz/vim-colorschemes'
Plug 'mutewinter/nginx.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'majutsushi/tagbar'

Plug 'fatih/vim-go'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"


" Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'ervandew/supertab'
" powerline not yet supported
" Plug 'Lokaltog/powerline', { 'rtp': 'powerline/bindings/vim/' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

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
