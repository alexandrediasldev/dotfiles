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


function! ToggleQuickFix()
    if empty(filter(getwininfo(), 'v:val.quickfix'))
        copen
    else
        cclose
    endif
endfunction

nnoremap <S-n> :call ToggleQuickFix()<cr>
noremap <M-n> :wa<cr>:make<cr> :copen<cr>
noremap <C-j> :cn<CR>
noremap <C-k> :cp<CR>



autocmd Filetype make set noexpandtab shiftwidth=8 softtabstop=0



