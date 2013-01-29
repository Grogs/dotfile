imap § <C-Y>
nmap § <C-Y>

""Change cursor shape in terminal
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

syntax on

""Colors
""if has("terminfo")
  ""set t_Co=16
  ""set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
  ""set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
""else
  ""set t_Co=16
  ""set t_Sf=[3%dm
  ""set t_Sb=[4%dm
""endif

""Enable mouse support in terminal (jsut xterm i guess?)
set mouse=a

" IMPORTANT: grep will sometimes skip displaying the file name if you
" " search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

call pathogen#infect()
filetype plugin indent on

"pdf output from vim-latex
"set g:Tex_DefaultTargetFormat=pdf


colorscheme molokai

set nocompatible

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
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wildmode=list:longest

noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
