set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set foldmethod=manual
set autochdir

set number
set relativenumber
set cursorline
set ts=4
set expandtab
set autoindent
set wildmenu
set hlsearch
set incsearch
exec "nohlsearch"
set ignorecase
set smartcase
set encoding=UTF-8

set tags=tags
set wrap
set showcmd

syntax on
"""

let mapleader=" "
noremap <LEADER><CR> :nohlsearch<CR>

map s <nop>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sl :set splitright<CR>:vsplit<CR>
"设置分屏快捷键

map <LEADER>h <C-w>h 
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
"设置快速切换分屏光标快捷键

map <LEADER>z zf%
map <LEADER>d zd

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR> 
map <right> :vertical resize+5<CR>
"设置调整分屏窗口大小

map <LEADER>t :tabe<CR>


call plug#begin('~/.vim/plugged') 
    Plug 'connorholyday/vim-snazzy'
	Plug 'itchyny/lightline.vim' 
	Plug 'ervandew/supertab'
	Plug 'garbas/vim-snipmate'
	Plug 'jiangmiao/auto-pairs'
	Plug 'scrooloose/nerdtree'
	Plug 'tomtom/tlib_vim'
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'honza/vim-snippets'
	Plug 'vim-airline/vim-airline'
    Plug 'Valloric/YouCompleteMe'
    Plug 'majutsushi/tagbar'
    Plug 'mhinz/vim-startify'
    Plug 'sheerun/vim-polyglot'
    Plug 'yanoasis/vim-devicons'
    Plug 'mbbill/undotree'
    Plug '/usr/share/fzf'
call plug#end()

let g:signify_vcs_list =['git']
let g:signify_cursorhold_insert = 1
let g:signify_cursorhold_normal = 1
let g:signify_updated_on_bufenter = 0

noremap gr :SignifyRefresh<CR>

map <LEADER>f :NERDTreeToggle <CR>
map <LEADER>b :TagbarToggle<CR>
noremap <F5> :UndotreeToggle<CR>

"let g:SnazzyTransparent=1
colorscheme snazzy
"
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


