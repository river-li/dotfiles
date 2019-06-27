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

map <LEADER>j 5j
map <LEADER>k 5k

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
call plug#end()

map <LEADER>f :NERDTreeToggle <CR>

"let g:SnazzyTransparent=1
colorscheme snazzy
