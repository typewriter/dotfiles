
"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" ----------------------------------------------
" Common
" ----------------------------------------------
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'w0rp/ale'
NeoBundle 'airblade/vim-gitgutter'
"let g:gitgutter_highlight_lines = 1
set updatetime=250
set signcolumn=yes
NeoBundle 'simeji/winresizer'
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'ryanoasis/vim-devicons'
let g:airline_theme = 'wombat'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]
let g:airline_section_c = '%t'
let g:airline_section_x = '%{&filetype}'
let g:airline_section_z = '%3l:%2v %{airline#extensions#ale#get_warning()} %{airline#extensions#ale#get_error()}'
let g:airline#extensions#ale#error_symbol = ' '
let g:airline#extensions#ale#warning_symbol = ' '
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#whitespace#enabled = 1





" ----------------------------------------------
" JavaScript
" ----------------------------------------------
NeoBundle 'othree/yajs.vim'
NeoBundle 'maxmellon/vim-jsx-pretty'
NeoBundle 'othree/javascript-libraries-syntax.vim'
NeoBundle 'othree/es.next.syntax.vim'

" ----------------------------------------------
" TypeScript
" ----------------------------------------------
NeoBundle 'leafgarland/typescript-vim'
" ----------------------------------------------
" Ruby
" ----------------------------------------------
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"End NeoBundle Scripts-------------------------


set encoding=utf-8

set nobackup
set noswapfile

syntax on

set number
set cursorline
set cursorcolumn

set list listchars=tab:\›\ 
set smartindent
set expandtab
set ts=2
set sw=2

set incsearch
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set laststatus=2

set background=dark

