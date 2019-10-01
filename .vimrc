set nocompatible
syntax on
set mouse=a

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
""Bundle 'aemoncannon/ensime'
""Bundle 'ensime/ensime-vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'bling/vim-bufferline'
Bundle 'derekwyatt/vim-scala'
Bundle 'flazz/vim-colorschemes'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'gmarik/vundle'
Bundle 'groovy.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/emmet-vim'
Bundle 'megaannum/vimside'
Bundle 'tfnico/vim-gradle'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/dbext.vim'
Bundle 'vim-scripts/paredit.vim'
Bundle 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

colorscheme wombat256mod

set modelines=0

"" tab/indent stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
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


imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces



