set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'mattn/emmet-vim'
Plugin 'ctrlp.vim'
Plugin 'fugitive.vim'
Plugin 'EasyMotion'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:EasyMotion_keys = 'asdfghjkl;'

source ~/MyConfig/vimscripts/comment_injector
nmap \\c :call InjectComment()<CR>

syntax on
filetype on
" For mason syntax.
autocmd BufEnter *.mh :syntax sync fromstart
autocmd BufEnter *.md :syntax sync fromstart
autocmd BufEnter *.mhtml :syntax sync fromstart
au BufNewFile,BufRead *.mh set filetype=mason
au BufNewFile,BufRead *.md set filetype=mason
au BufNewFile,BufRead *.mhtml set filetype=mason

colorscheme desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set nu
set hlsearch
set incsearch
set smartindent
