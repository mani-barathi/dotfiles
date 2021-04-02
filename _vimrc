" Author   : Manibarathi
" GitHub   : https://github.com/mani-barathi/dotfiles

imap jk <Esc>			
inoremap <C-BS> <C-\><C-o>db 
map <C-P> :b#<Enter>
set wildchar=<Tab> wildmenu wildmode=full

syntax on
set nu
set hidden
set laststatus=2
set backspace=2
set noswapfile          	                " No swap
set t_Co=256				                      " Set if term supports 256 colors.
" set clipboard=unnamedplus   Copy/paste between vim and other programs.
set incsearch
set noerrorbells				                  " Removes annoying sound
set belloff=all				                    " Removes annoying sound

" Tabs, Spaces ------------------------------
set autoindent							
set smarttab					                    " Be smart using tabs
set shiftwidth=4				                  " One tab == four spaces.
set tabstop=4 softtabstop=4               " One tab == four spaces.

" Plugins -----------------------------------
" vim-plug as a Plugin Manager 
" https://github.com/junegunn/vim-plug

call plug#begin('~/vimfiles/plugged')
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

colorscheme onedark

" GUI ---------------------------------------
if has("gui_running")
 if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
    set guioptions -=m "Hides the menubar
    set guioptions -=T "Hides the toolbar
  endif
endif


" Splits and Tabbed Files ---------------------
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

noremap <leader>b :wincmd v<bar> :Ex <bar> :vertical <Enter> 
" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 
