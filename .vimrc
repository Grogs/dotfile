set nocompatible
syntax on
set mouse=a
colorscheme molokai

call pathogen#infect()
filetype plugin indent on

set modelines=0

"" tab/indent stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"" general
set encoding=utf-8
set scrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"" set relativenumber
"" set undofile

""searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

set wildmode=list:longest

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

map <c-n> :tabnew<CR>                                                                      
map <c-e> :tabe 

