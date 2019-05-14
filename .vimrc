set nocompatible
filetype off

" change mapleader
let mapleader=","

" vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" vundle plugins
Plugin 'scrooloose/nerdtree'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'valloric/YouCompleteMe'

" end vundle
call vundle#end()

" plugins
nmap <leader>ne :NERDTree<cr>

" color scheme
" lyla, orbital, phoenix, papaya, papaya_original, apprentice, paramount, monochrome, pencil
colorscheme zellner
filetype plugin indent on

set background=dark
set t_Co=256

" splits and navigation
nnoremap <Down> <Esc><C-W><C-J>
nnoremap <Up> <Esc><C-W><C-K>
nnoremap <Right> <Esc><C-W><C-L>
nnoremap <Left> <Esc><C-W><C-H>

" code folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
nnoremap <space> za

" pathogen setup
" execute pathogen#infect()
call pathogen#infect()
" let python_highlight_all=1
syntax on

" modify runtime path to include ~/.vim/bundle
call pathogen#helptags()
"call pathogen#runtime_append_all_bundles()

" general vim behavior
set noswapfile
" set expandtab
set autoindent
set copyindent
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set shiftround
set showmatch
set smartcase
set smarttab
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set title
set visualbell
set noerrorbells
set encoding=utf-8

" autocommands
"if has('autocmd')
"	autocmd filetype python set expandtab
"endif
autocmd filetype markdown setlocal spell

" python
imap <F5> <Esc>:w<CR>:!clear;python %<CR>
