set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'sjl/gundo.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

colorscheme solarized
let g:solarized_termcolors=256
set background=dark
set number	    		" display line number
set ruler		    	" display column and line number
syntax enable			" syntax on
nnoremap B ^		    " map B to begin of line
nnoremap E $			" map E to end of line
set cursorline			" highlight current line
filetype indent on		" indent based on file type
set showmatch			" so matching
set tabstop=2			" 2 space tabs
set shiftwidth=2
set softtabstop=2
set expandtab			" use spaces instead of tab
set showcmd              " show command at the bottom

set ignorecase          " ignore case when searching
set incsearch           " search as text entered
set hlsearch            " highlight all searches

set clipboard=unnamed
set pastetoggle=<F2>

match Error /\s\+$/     " display trailing whitespaces

let g:session_autosave = 'no'
let mapleader=","
nnoremap j gj
nnoremap k gk
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>rs :%s/\s\+$//g<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>s :mksession<CR>
nnoremap <leader>sh :sh<CR>
nnoremap <leader>z :sh<CR>
nnoremap <leader>sa :w<CR>
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>t gt<CR>:cd %:p:h<CR>
nnoremap <space> i_<esc>r
inoremap jk <esc>
inoremap ,sa <esc>:w<CR>
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
autocmd CompleteDone * pclose

