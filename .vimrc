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

imap <c-s> :w

let g:airline_powerline_fonts = 1 
let g:airline_theme="jellybeans"

if has("gui_macvim")
    let g:airline_theme="powerlineish"
    set guifont=Inconsolata\ for\ Powerline:h16
    colorscheme wombat
endif

call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'derekwyatt/vim-scala'
Bundle 'groovy.vim'
Bundle 'tfnico/vim-gradle'



