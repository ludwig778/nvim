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
" nnoremap <c-w> :q<CR>
" nnoremap <c-x> :q!<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>d yyp
nnoremap <leader>t :tabe<CR>
nnoremap <c-t> :tabe<CR>
nnoremap <leader>z :TagbarToggle<CR>
nnoremap <leader>u :PlugUpdate<CR>
nnoremap <leader>U :PlugUpgrade<CR>

set number
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
" let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']

" YOU COMPLETE ME
"let g:ycm_autoclose_preview_window_after_completion=1
set completeopt-=preview
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_stop_completion = ['\<C-c>']

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

nnoremap <leader>& 1gt<CR>
nnoremap <leader>é 2gt<CR>
nnoremap <leader>" 3gt<CR>
nnoremap <leader>' 4gt<CR>
nnoremap <leader>( 5gt<CR>
nnoremap <leader>- 6gt<CR>
nnoremap <leader>è 7gt<CR>
nnoremap <leader>_ 8gt<CR>
nnoremap <leader>ç 9gt<CR>

nnoremap <c-v> :split<CR>
nnoremap <c-h> :vsplit<CR>

nnoremap <C-z> <C-w>k
nnoremap <C-q> <C-w>h
nnoremap <C-s> <C-w>j
nnoremap <C-d> <C-w>l

nnoremap <C-z> <C-w>K
nnoremap <C-q> <C-w>H
nnoremap <C-s> <C-w>J
nnoremap <C-d> <C-w>L

" Same with arrows
nnoremap <C-Up> <C-w>k
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Right> <C-w>l

" Resize windows
nmap <c-S-Up> :res +5<CR>
nmap <c-S-Down> :res -5<CR>
nmap <c-S-Left> :vertical resize -8<CR>
nmap <c-S-Right> :vertical resize +8<CR>

nmap <c-S-Z> :res +5<CR>
nmap <c-S-S> :res -5<CR>
nmap <c-S-Q> :vertical resize -8<CR>
nmap <c-S-D> :vertical resize +8<CR>
