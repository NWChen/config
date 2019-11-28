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
Plugin 'l04m33/vlime', {'rtp': 'vim/'}
"Plugin 'valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Bundle 'https://github.com/sillybun/vim-repl'
Bundle 'sillybun/vim-async'
Bundle 'sillybun/zytutil'

" end vundle
call vundle#end()

" plugins
nmap <leader>ne :NERDTree<cr>
let g:airline_theme='deus'
let g:slime_target='tmux'

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
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 11/10)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 10/11)<CR>
nnoremap <C-T> :ter ++curwin

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

" cpp
set exrc
set secure

" ocaml
" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
