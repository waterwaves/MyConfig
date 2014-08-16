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

let g:EasyMotion_keys = 'asdfghjkleiwro'

" Auto insert console log/data dumper
source ~/MyConfig/vimscripts/comment_injector
nmap \\c :call InjectComment()<CR>

" Key Mappings


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
hi Search cterm=NONE ctermfg=Black ctermbg=LightCyan
set cursorline
hi CursorLine cterm=bold
hi CursorLineNr cterm=bold ctermfg=Green


set tabstop=4
set shiftwidth=4
"set expandtab
set softtabstop=4
set nu
set hlsearch
set incsearch
set smartindent
