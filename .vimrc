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
Bundle 'ensime/ensime-vim'
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'derekwyatt/vim-scala'
Bundle 'vim-scripts/dbext.vim'
Bundle 'groovy.vim'
Bundle 'tfnico/vim-gradle'
Bundle 'bling/vim-bufferline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-fireplace'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'vim-scripts/paredit.vim'
Bundle 'tpope/vim-surround'
Bundle 'majutsushi/tagbar'
Bundle 'megaannum/vimside'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'aemoncannon/ensime'
Bundle 'mattn/emmet-vim'


imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



