set encoding=utf-8 fileencodings=
syntax on
filetype on

"enable plugin
filetype plugin on


set number
set cc=80
set expandtab
set list listchars=tab:»·,trail:·
set smarttab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Make backspace behave as expected
set backspace=eol,indent,start

" Set the minimal amount of lignes under and above the cursor
" Useful for keeping context when moving with j/k
set scrolloff=5


" Reload a file when it is changed from the outside
set autoread
" Allow mouse use in vim
set mouse=a
" Briefly show matching braces, parens, etc
set showmatch


" Highlight current line
set cursorline


""""""""""""""""""""""""""""""""""""""""""""""""""
" Search options
""""""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case on search
set ignorecase

" Ignore case unless there is an uppercase letter in the pattern
set smartcase

" Move cursor to the matched string
set incsearch

" Don't highlight matched strings
set nohlsearch

" Enable Doxygen highlighting
let g:load_doxygen_syntax=1

function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

" Set "," as map leader
let mapleader = ","

nnoremap <S-n> :call ToggleQuickFix()<cr>
autocmd FileType c,cpp noremap <leader>m :wa<cr>:make<cr> :copen<cr>
autocmd FileType c,cpp noremap <leader>n :wa<cr>:make -j8<cr> :copen<cr>

autocmd FileType java noremap <leader>n :wa<cr>:!mvn package<cr>
noremap <C-j> :cn<CR>
noremap <C-k> :cp<CR>

" Move between rows in wrapped lines
noremap j gj
noremap k gk
"

" Moving between windows
noremap <M-j> <C-W>j
noremap <M-k> <C-W>k
noremap <M-l> <C-W>l
noremap <M-h> <C-W>h
" Moving between tabs
noremap <M-i> gt
noremap <M-u> gT

" Open the quickfix window if there are errors, or close it if there are no
" errors left
noremap <leader>cw :botright :cw<cr>


autocmd Filetype make set noexpandtab shiftwidth=8 softtabstop=0



