let mapleader =" "

call plug#begin('C:\Users\joshd\AppData\Local\nvim\autoload\')
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'xstrtok/dwm.vim'
call plug#end()

set bg=dark
set go=a
set mouse=a
set nohlsearch
set clipboard+=unnamed
set ignorecase
set smartcase

"Some basics
noremap c "_c
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number relativenumber

"Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

"Automatically deletes all trailing whitespace on wave.
autocmd BufWritePre * %s/\s\+$//e

"Auto-Compile Latex documents
autocmd BufWritePost *.tex silent! execute "!pdflatex %" | redraw!

"Compile LilyPond Scores
map <F8> :w <CR> :!lilypond %
