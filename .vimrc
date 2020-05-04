" inspaired by https://github.com/wsdjeg/vim-galore-zh_cn/blob/master/contents/minimal-vimrc.vim
set nocompatible

filetype plugin indent on
syntax on

set ai
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set shiftround

set backspace=indent,eol,start
set hidden
set laststatus=2
set display=lastline

set nu

set wildmenu
set wrap

set showmode
set showcmd

set incsearch
set hlsearch

set ttyfast
set lazyredraw

set splitbelow
set splitright

set cursorline
set wrapscan
set report=0
set synmaxcol=200

set t_Co=256
set termguicolors

"set list
"if has('multi_byte') && &encoding ==# 'utf-8'
"	let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
"else
"  	let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
"endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  	set shell=/bin/bash
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

" solarized8
set background=dark
colorscheme solarized8

" vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1 " enable highlighting of class scope
let g:cpp_class_decl_highlight = 1  " enable highlighting of class names in declarations
