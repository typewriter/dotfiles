" Install vim-jetpack
let s:jetpackfile = stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
let s:jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
if !filereadable(s:jetpackfile)
  call system(printf('curl -fsSLo %s --create-dirs %s', s:jetpackfile, s:jetpackurl))
endif

" Install plugins
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'simeji/winresizer'
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'junegunn/fzf.vim'
Jetpack 'nathanaelkane/vim-indent-guides'
Jetpack 'airblade/vim-gitgutter'
Jetpack 'tpope/vim-endwise'
Jetpack 'bronson/vim-trailing-whitespace'
Jetpack 'neoclide/coc.nvim', { 'branch': 'release','do': 'yarn install --frozen-lockfile' }
Jetpack 'ryanoasis/vim-devicons'
Jetpack 'vim-airline/vim-airline-themes'
Jetpack 'vim-airline/vim-airline'
Jetpack 'lambdalisue/fern.vim'
call jetpack#end()

" Config plugins
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1

nnoremap <C-f> :GFiles<CR>
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=22
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=18

set updatetime=500
set signcolumn=yes

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> rn <Plug>(coc-rename)
nmap <silent> qf <Plug>(coc-fix-current)
autocmd CursorHold * silent! call CocAction('doHover')
inoremap <silent><expr> <c-space> coc#refresh()

let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'y', 'z']]

nnoremap <C-t> :Fern . -reveal=% -drawer -toggle -width=40<CR>

" Config
set number

set noswapfile

set splitright

set smartindent
set expandtab
set ts=2
set sw=2

nmap <Esc><Esc> :nohlsearch<CR><Esc>
set inccommand=split
