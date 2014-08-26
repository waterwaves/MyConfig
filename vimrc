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
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:EasyMotion_keys = 'asdfghjkleiwro'


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
" Force markdown syntax highlighting to work
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" colorscheme flatcolor
" source ~/MyConfig/vimscripts/colors/flatcolor.vim
set cursorline
hi CursorLine cterm=bold ctermbg=0
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


" Auto insert console log/data dumper
source ~/MyConfig/vimscripts/debug_injector.vim
noremap ∂ :call InsertDebug()<CR>
" Auto highlight current word and search in the page
" Ctrl-[ a
source ~/MyConfig/vimscripts/autohighlight.vim

