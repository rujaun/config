call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()

let loaded_netrwPlugin = 1

map <C-n> :NERDTreeToggle<CR>


syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
