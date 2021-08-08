" Author   : Manibarathi
" Link     : https://github.com/mani-barathi/dotfiles

set nocompatible

inoremap jk <Esc>

syntax enable
set nu
set laststatus=2
set noerrorbells			  " Removes annoying sound
set belloff=all			    " Removes annoying sound
set hidden
set backspace=indent,eol,start

set tabstop=2           " number of visual spaces per TAB
set softtabstop=2       " number of spaces in tab when editing
set shiftwidth=2
set autoindent
set smartindent
set expandtab           " tabs are spaces

set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
" set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set fillchars+=vert:\ 
set foldenable          " enable folding
set signcolumn=yes

set noswapfile
set nowrap
set title
set scrolloff=1
set path+=**                                                                    
set wildignore+=**/node_modules/** 

filetype indent on      " load filetype-specific indent files
filetype plugin on

:set guioptions-=m      "remove menu bar
:set guioptions-=T      "remove toolbar
:set guioptions-=r      "remove right-hand scroll bar
:set guioptions-=L      "remove left-hand scroll bar

let g:netrw_banner = 0

set fillchars+=vert:\|
set splitbelow splitright

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <leader>b :Vex<CR>
noremap <leader>B :tabedit<Bar>:Ex<CR>

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

map <leader>th <c-w>t<c-w>h
map <Leader>tk <C-w>t<C-w>K

inoremap <C-BS> <C-W>
nnoremap - $

map <F9> :w<CR>:!python %<CR>
map <F10> :w<CR>:!node %<CR>

if has("gui_running")
        if has("gui_gtk2")
                set guifont=Inconsolata\ 12
        elseif has("gui_macvim")
                set guifont=Menlo\ Regular:h14
        elseif has("gui_win32")
                set guifont=Consolas:h11:cANSI
                " set guifont=Consolas:h13:cANSI
        endif
endif

call plug#begin('~/vimfiles/plugged')
" Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'kien/ctrlp.vim'
call plug#end()

colorscheme onedark

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|__pycache__\|venv\|env\'
let g:ctrlp_max_files=0 

