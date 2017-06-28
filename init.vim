call plug#begin('~/.vim/plugged')

" Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

call plug#end()



let g:airline_theme='powerlineish'
" let g:airline_left_sep='>'
" let g:airline_right_sep='<'
let g:airline_powerline_fonts = 1

let mapleader=" "

nnoremap <leader>i :NERDTreeTabsToggle<cr>
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

set relativenumber
set number
