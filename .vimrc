set number
"set smartindent
set showmatch
set tabstop=4
set expandtab

nnoremap j gj
nnoremap k gk

set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
set ambiwidth=double

augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END

autocmd BufNewFile,BufRead *.html.erb set filetype=html
autocmd BufNewFile,BufRead *.html.twig set filetype=html
autocmd BufNewFile,BufRead *.twig set syntax=htmljinja
autocmd BufNewFile,BufRead *.php.cache set filetype=php
autocmd BufNewFile,BufRead *.ctp set filetype=php

"php
autocmd FileType php set dictionary=dictionary/PHP.dict
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>i
vnoremap <C-P> :call PhpDocRange()<CR>