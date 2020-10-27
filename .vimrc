call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-scripts/indentpython'

call plug#end()

let loaded_netrwPlugin = 1

map <C-n> :NERDTreeToggle<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "hide .pyc files in nerdtree

syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set encoding=utf-8
