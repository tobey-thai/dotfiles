colorscheme slate
"colorscheme elflord

" Tabs
set expandtab smarttab tabstop=4 shiftwidth=4 softtabstop=0

set showmode
set ruler
set relativenumber
set nu

set nolist

" Column control
"set textwidth=80
set cc=+0
highlight ColorColumn ctermbg=5

" Line wrapping
set wrap linebreak
set breakindent breakindentopt=min:40,shift:2,sbr
let &showbreak='> '
set synmaxcol=160

set backspace=indent,eol,start

set wildmenu
set wildmode=list:longest

"set tags+=/home/linux/ieng6/cs120f/t5thai/tags

" autocmd
au BufRead,BufNewFile *.s
    \ set noexpandtab shiftwidth=8 tabstop=8

au BufRead,BufNewFile *.{c,h,java,hpp,cpp,sh}
    \ set expandtab tabstop=4 shiftwidth=4

au BufRead,BufNewFile *.tex set textwidth=0

" Set k and j to move along displayed lines for txt files
au BufRead,BufNewFile *.txt nnoremap k gk
au BufRead,BufNewFile *.txt nnoremap j gj

" Remove whitespace at EOL
"au BufWritePre *.{c,h,java,hpp,cpp} %s/\s\+$//e

set mouse=
