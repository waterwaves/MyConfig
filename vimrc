set nocompatible              " be iMproved, required
filetype off                  " required

set backspace=indent,eol,start

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:EasyMotion_keys = 'asdfghjkleiwro'


" Key Mappings


syntax on
filetype on

colorscheme slate

" source ~/MyConfig/vimscripts/colors/flatcolor.vim
set cursorline
hi CursorLine cterm=bold ctermbg=None guibg=NONE
hi Search cterm=none ctermfg=White
hi CursorLineNr cterm=bold ctermfg=White


set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set nu
set incsearch
set hlsearch
set smartindent
set laststatus=2


" Auto insert console log/data dumper - <Alt+d>
source ~/MyConfig/vimscripts/debug_injector.vim
noremap ∂ :call InsertDebug()<CR>
" Auto highlight current word and search in the page
" Ctrl-[ a
source ~/MyConfig/vimscripts/autohighlight.vim

