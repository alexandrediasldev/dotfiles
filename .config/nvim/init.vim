set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set guicursor=

call plug#begin(stdpath('data') . '/plugged')

Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

source ~/.config/nvim/nvim_coc.vim



