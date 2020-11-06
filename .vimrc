autocmd FileType python setlocal ts=4 sw=4 sts=4
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
syntax on
filetype plugin indent on
set expandtab
set number
set colorcolumn=80
execute pathogen#infect()
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
let g:ale_fixers = {
\   'c++': [
\       'clang-format',
\       'uncrustify',
\       {buffer, lines -> filter(lines, 'v:val !=~ ''^\s*//''')},
\   ],
\}

