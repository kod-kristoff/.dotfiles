" +------------+
" | leader key |
" +------------+ {{{

" Configure leader key
let mapleader = "\<space>"
let maplocalleader = "\<space>"

" }}}

" +----------------+
" | install plugin |
" +----------------+ {{{

" Source plugin definition file
source $VIMCONFIG/init_plugins.vim

" }}}

set clipboard+=unnamedplus

" no swap file
set noswapfile

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000

" set line number
set number

" use 4 spaces instead of tab
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

nnoremap <space> <nop> 

nnoremap <leader>bn :bn<cr> ;buffer next 
nnoremap <leader>tn gt ;new tab

augroup filetype_csv
    autocmd!

    autocmd BufRead,BufWritePost *.csv :%ArrangeColumn!
    autocmd BufWritePre *.csv :%UnArrangeColumn
augroup END
