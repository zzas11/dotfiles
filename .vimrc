syntax on
colorscheme xcode-default

set number

set nocompatible
filetype off

" set runtime for bundle
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/bin/fzf
call vundle#begin()

" let Vundle handle Vundle
Plugin 'VundleVim/Vundle.vim'

" syntastic
" Plugin 'vim-syntastic/syntastic'

" async lint
Plugin 'w0rp/ale'

" kotlin
Plugin 'udalov/kotlin-vim'

" fzf
Plugin 'junegunn/fzf.vim'

" nerdtree
Plugin 'scrooloose/nerdtree'

" lightline
Plugin 'itchyny/lightline.vim' 

" tmuxline
Bundle 'edkolev/tmuxline.vim'

call vundle#end()
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Put this in vimrc or a plugin file of your own.
let g:ale_fixers = {
\   'kotlin': [  
\     'remove_trailing_lines',
\     'trim_whitespace'
\   ]
\}

let g:lightline = {
      \ 'colorscheme': 'PaperColor_light',
      \ }
