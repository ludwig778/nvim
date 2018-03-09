call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/Conque-Shell'

call plug#end()

let mapleader="\<Space>"

" NERD TREE
function Nerd()
    if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
	if bufwinnr(t:NERDTreeBufName) == winnr()
	    :NERDTreeClose
	else
	    :NERDTreeFocus
	endif
    else
	":NERDTreeTabsOpen
	:NERDTree
    endif
endfunction
nnoremap <leader>a :call Nerd()<cr>

set tags=~/.tags



nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>d yyp
nnoremap <leader>t :tabe<CR>
nnoremap <leader>z :TagbarToggle<CR>
nnoremap <leader>u :PlugUpdate<CR>
nnoremap <leader>U :PlugUpgrade<CR>

"set number
set relativenumber
set smartindent
set autoindent
set ruler     
syntax on

" SYNTASTIC
nnoremap <F2> :SyntasticCheck<CR>
nnoremap <F3> :SyntasticToggle<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=13
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

" YOU COMPLETE ME
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

":nnoremap <leader>q :q<Esc>
":nnoremap <leader>Q :q!<Esc>
":nnoremap <leader>s :w<Esc>
"
"
"" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
"set shiftwidth=4
"set tabstop=4

" Linebreak on 500 characters
"set lbr
"set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap
